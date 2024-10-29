//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Skyler Robbins on 10/28/24.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal] {
        let breakfast = Meal(name: "Breakfast", food: [
            Food(name: "Eggs", description: "Scrambled"),
            Food(name: "Bacon", description: "Very Crispy"),
            Food(name: "Milk", description: "2%")
        ])
        let lunch = Meal(name: "Lunch", food: [
            Food(name: "Sandwich", description: "Ham and Cheese"),
            Food(name: "Takis", description: "Fuego"),
            Food(name: "Salad", description: "Caesar")
        ])
        let dinner = Meal(name: "Dinner", food: [
            Food(name: "Steak", description: "Medium Rare"),
            Food(name: "Rolls", description: "With Strawberry Jam"),
            Food(name: "Potatoes", description: "Mashed")
        ])
        return [breakfast, lunch, dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        // Configure the cell...
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }

}
