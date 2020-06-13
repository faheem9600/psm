class FoodEntry {

    String name;
    int calories;
    int quantity;

    FoodEntry.empty() {
        name = "";
        calories = 0;
        quantity = 1;
    }

    FoodEntry(this.name, this.calories, this.quantity);

    FoodEntry.fromJson(Map<String, dynamic> json)
        :
            name = json['name'],
            calories = json['calories'],
            quantity = json['quantity'];

    Map<String, dynamic> toJson() =>
        {
            'name': name,
            'calories': calories,
            'quantity': quantity,
        };

    int get totalCalories {
        return calories * quantity;
    }

}