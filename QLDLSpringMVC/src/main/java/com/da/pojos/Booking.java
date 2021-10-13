/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.pojos;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author CaoNgocCuong
 */

@Entity
@Table (name = "booking")
public class Booking implements Serializable {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private int id;
    private int adults;
    private int children;
    private Boolean status;
    @Column(name = "payment_method")
    private String paymentMethod;
    private String note;
    
    @Transient
    private int userId;
    
    @ManyToOne
    @JoinColumn (name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn (name = "tour_id")
    private Tour tour;
    
    @OneToOne (mappedBy = "booking")
    @PrimaryKeyJoinColumn
    private Billing billing;
    
    @OneToOne (mappedBy = "booking")
    @PrimaryKeyJoinColumn
    private Cancellation cancellation;
    
   
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the adults
     */
    public int getAdults() {
        return adults;
    }

    /**
     * @param adults the adults to set
     */
    public void setAdults(int adults) {
        this.adults = adults;
    }

    /**
     * @return the children
     */
    public int getChildren() {
        return children;
    }

    /**
     * @param children the children to set
     */
    public void setChildren(int children) {
        this.children = children;
    }

    /**
     * @return the status
     */
    public Boolean getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(Boolean status) {
        this.status = status;
    }

    /**
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     * @return the tour
     */
    public Tour getTour() {
        return tour;
    }

    /**
     * @param tour the tour to set
     */
    public void setTour(Tour tour) {
        this.tour = tour;
    }

    /**
     * @return the cancellation
     */
    public Cancellation getCancellation() {
        return cancellation;
    }

    /**
     * @param cancellation the cancellation to set
     */
    public void setCancellation(Cancellation cancellation) {
        this.cancellation = cancellation;
    }

    /**
     * @return the billing
     */
    public Billing getBilling() {
        return billing;
    }

    /**
     * @param billing the billing to set
     */
    public void setBilling(Billing billing) {
        this.billing = billing;
    }

    /**
     * @return the paymentMethod
     */
    public String getPaymentMethod() {
        return paymentMethod;
    }

    /**
     * @param paymentMethod the paymentMethod to set
     */
    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    /**
     * @return the note
     */
    public String getNote() {
        return note;
    }

    /**
     * @param note the note to set
     */
    public void setNote(String note) {
        this.note = note;
    }

    /**
     * @return the userId
     */
    public int getUserId() {
        return userId;
    }

    /**
     * @param userId the userId to set
     */
    public void setUserId(int userId) {
        this.userId = userId;
    }
}
