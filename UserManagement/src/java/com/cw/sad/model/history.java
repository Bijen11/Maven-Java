/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.model;

/**
 *
 * @author acer
 */
public class history {

    int id;
    String email, activity, date;

    public history(String email, String activity, String date) {
        this.email = email;
        this.activity = activity;
        this.date = date;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String email) {
        this.email = email;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getActivity() {
        return activity;
    }

    public String getDate() {
        return date;
    }

    public history(int id, String email, String activity, String date) {
        this.email = email;
        this.activity = activity;
        this.date = date;
        this.id = id;
    }

}
