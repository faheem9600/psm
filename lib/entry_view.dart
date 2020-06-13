import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'food_entry.dart';
import 'utility.dart';
import 'diary_entry.dart';
import 'food_view.dart';




class EntryView extends StatefulWidget {

    DiaryEntry diaryEntry;

    EntryView(this.diaryEntry);

    @override
    EntryViewState createState() => EntryViewState();
}

class EntryViewState extends State<EntryView> {

    int target = 1800;

    FoodEntry undoMeal;


    @override
    void initState() {
        super.initState();
        _loadTarget();
    }

    Future<Null> _saveEntry() async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString(widget.diaryEntry.id, jsonEncode(widget.diaryEntry.toJson()));
    }

    Future<Null> _loadTarget() async {
        // Load calorie target
        var t = await loadValue("SX_target");
        if (t != null) {
            setState(() {
                target = t;
            });
        }
    }

    _pushFoodEntry(meal) async {
        var result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FoodView(FoodEntry.empty())),
        );
        if (result != null) {
            setState(() {
                meal.add(result);
            });
        }
    }

    Card _buildMealCard(String mealName, ThemeData themeData) {

        List<FoodEntry> meal;
        int total;

        final snackBar = SnackBar(
            content: Text('Data dipadam'),
            action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                    setState(() {
                        meal.add(undoMeal);
                    });
                    // Some code to undo the change.
                },
            ),
        );

        switch (mealName) {
            case "Sarapan":
                meal = widget.diaryEntry.breakfast;
                total = widget.diaryEntry.totalBreakfast;
                break;
            case "Makan Tengah Hari":
                meal = widget.diaryEntry.lunch;
                total = widget.diaryEntry.totalLunch;
                break;
            case "Makan Malam":
                meal = widget.diaryEntry.dinner;
                total = widget.diaryEntry.totalDinner;
                break;
            case "Other":
                mealName = "Sneks";
                meal = widget.diaryEntry.other;
                total = widget.diaryEntry.totalOther;
                break;
        }

        return Card(
            margin: EdgeInsets.symmetric(vertical: 5.0),
            color: themeData.backgroundColor,
            child: Column(
                children: <Widget>[
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: ListTile(
                            dense: true,
                            title: Text(
                                mealName,
                                style: TextStyle(
                                    color: themeData.textTheme.headline6.color,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                )
                            ),
                            leading: IconButton(
                                icon: Icon(
                                    Icons.add,
                                    color: themeData.primaryIconTheme.color,
                                ),
                                onPressed: () async {
                                    if (widget.diaryEntry.totalCalories >= target) {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                                return AlertDialog(
                                                    title: Text(
                                                        "Anda Pasti?",
                                                        style: TextStyle(
                                                            color: themeData.textTheme.headline6.color,
                                                        ),
                                                    ),
                                                    content: Text(
                                                        "Anda telah melebihi had kalori harian anda sebanyak $target kalori",
                                                        style: TextStyle(
                                                            color: themeData.textTheme.bodyText2.color,
                                                        ),
                                                    ),
                                                    actions: <Widget>[
                                                        FlatButton(
                                                            child: Text(
                                                                "BATAL",
                                                                style: TextStyle(
                                                                    color: themeData.primaryIconTheme.color,
                                                                ),
                                                            ),
                                                            onPressed: () {
                                                                Navigator.pop(context, false);
                                                            },
                                                        ),
                                                        FlatButton(
                                                            child: Text(
                                                                "YES",
                                                                style: TextStyle(
                                                                    color: themeData.iconTheme.color,
                                                                ),
                                                            ),
                                                            onPressed: () {
                                                                Navigator.pop(context, true);
                                                            },
                                                        )
                                                    ],
                                                );
                                            }
                                        ).then((val) {
                                            if (val) {
                                                _pushFoodEntry(meal);
                                            }
                                        });
                                    } else {
                                        _pushFoodEntry(meal);
                                    }
                                },
                            ),
                            trailing: Text(
                                "$total Kalori",
                                style: TextStyle(
                                    color: themeData.textTheme.headline6.color,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                )
                            ),
                        ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: meal.length,
                        itemBuilder: (BuildContext context, int index) {
                            FoodEntry foodEntry = meal.elementAt(index);
                            return ListTile(
                                title: Text(
                                    "${foodEntry.name} (x${foodEntry.quantity})",
                                    style: TextStyle(
                                        color: themeData.textTheme.headline6.color,
                                    )
                                ),
                                subtitle: Text(
                                    "${foodEntry.totalCalories} Kalori",
                                    style: TextStyle(
                                        color: themeData.textTheme.subtitle2.color,
                                    )
                                ),
                                trailing: IconButton(
                                    icon: Icon(
                                        Icons.delete,
                                        color: themeData.iconTheme.color,
                                    ),
                                    onPressed: () {
                                        undoMeal = meal.elementAt(index);
                                        setState(() {
                                            meal.removeAt(index);
                                        });
                                        Scaffold.of(context).showSnackBar(snackBar);
                                    },
                                ),
                                onTap: () async {
                                    var result = await Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => FoodView(foodEntry)),
                                    );
                                    if (result != null) {
                                        setState(() {
                                            meal[index] = result;
                                        });
                                    }
                                },
                            );
                        },
                    ),
                ],
            ),
        );
    }

    @override
    Widget build(BuildContext context) {
        ThemeData themeData = Theme.of(context);
        return Scaffold(
            appBar: AppBar(
                title: Text(
                    "Catatan Data Kalori"
                ),
                actions: <Widget>[
                    FlatButton(
                        textColor: themeData.primaryIconTheme.color,
                        onPressed: () {
                            _saveEntry();
                            Navigator.pop(context);
                        },
                        child: Text(
                            "SIMPAN",
                        )
                    )
                ],
            ),
            body: ListView(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                children: <Widget>[
                    Card(
                        margin: EdgeInsets.symmetric(vertical: 5.0),
                        color: themeData.backgroundColor,
                      child: Container(
                          decoration: BoxDecoration(
                              color: themeData.colorScheme.onPrimary,
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          child: ListTileTheme(
                              child: ListTile(
                                  title: Text(
                                      widget.diaryEntry.humanReadableDate,
                                      style: TextStyle(
                                          color: Theme.of(context).textTheme.headline6.color,
                                          fontWeight: FontWeight.bold,
                                      ),
                                  ),
                                  trailing: Text(
                                      "${widget.diaryEntry.totalCalories} Kalori",
                                      style: TextStyle(
                                          color: (widget.diaryEntry.totalCalories < target) ? Theme.of(context).textTheme.headline5.color : Theme.of(context).errorColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                      ),
                                  ),
                                  onTap: () async {
                                      DateTime selectedDate = await showDatePicker(
                                          context: context,
                                          initialDate: widget.diaryEntry.date,
                                          firstDate: DateTime(2018),
                                          lastDate: DateTime(2030),
                                      );

                                      if (selectedDate != null) {
                                          setState(() {
                                              widget.diaryEntry.date = selectedDate;
                                          });
                                      }
                                  },
                              ),
                          ),
                      ),
                    ),
                    _buildMealCard("Sarapan", themeData),
                    _buildMealCard("Makan Tengah Hari", themeData),
                    _buildMealCard("Makan Malam", themeData),
                    _buildMealCard("Other", themeData),
                ],
            ),
        );
    }

}