/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import java.util.HashMap;
import java.util.Map;
import model.Car;

/**
 *
 * @author MY HP COM
 */
public class cardata {

    final private Map<String, Car> cars = new HashMap<>();
    final private static cardata instance = new cardata();

    cardata() {
        cars.put("Lamborghini", new Car("Lamborghini", "Aventador", "350", "2002"));
        cars.put("Ferrari", new Car("Ferrari", "Enzo", "380", "2000"));
        cars.put("Ford", new Car("Ford", "GT", "420", "1998"));
    }

    public static cardata getInstance() {
        return instance;
    }

    public Car getCar(String name) {
        return cars.get(name);
    }

    public void putCar(Car brand) {
        cars.put(brand.getBrand(), brand);
    }

}
