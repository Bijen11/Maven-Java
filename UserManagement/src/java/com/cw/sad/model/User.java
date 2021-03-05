/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.model;

/**
 *
 * @author Rai jee
 */
public class User {

    int id;
    String name;
    String email;
    String password;
    String dob;
    String contact;
    String address;
    String role;

    public User() {

    }

    public User(int id, String name, String email, String password, String dob, String contact, String address, String role) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.contact = contact;
        this.address = address;
        this.role = role;
    }

    public User(String name, String email, String password, String dob, String contact, String address, String role) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.contact = contact;
        this.address = address;
        this.role = role;
    }

    public User(String email, String password, String dob, String contact, String address, String role) {
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.contact = contact;
        this.address = address;
        this.role = role;
    }

    public User(String password, String dob, String contact, String address, String role) {
        this.password = password;
        this.dob = dob;
        this.contact = contact;
        this.address = address;
        this.role = role;
    }

    public User(String dob, String contact, String address, String role) {
        this.dob = dob;
        this.contact = contact;
        this.address = address;
        this.role = role;
    }

    public User(String contact, String address, String role) {
        this.contact = contact;
        this.address = address;
        this.role = role;

    }

    public User(String address, String role) {
        this.address = address;
        this.role = role;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRole() {
        return role;

    }

    public void setRole(String role) {
        this.role = role;

    }

}
