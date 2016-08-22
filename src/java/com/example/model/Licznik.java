/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.model;

/**
 *
 * @author Bart
 */
public class Licznik {

    private static int liczba;
    
    public static int getLiczba(){
        liczba++;
        return liczba;
    }
}
