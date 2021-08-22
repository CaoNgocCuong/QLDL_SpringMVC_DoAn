/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.pojos;

import java.io.Serializable;
import java.util.Set;
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
    private String status;
    
    @ManyToOne
    @JoinColumn (name = "customer_id")
    private Customer customer;

    @ManyToOne
    @JoinColumn (name = "tour_id")
    private Tour tour;
    
    @OneToMany (mappedBy = "booking")
    private Set<Billing> billings;
    
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
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the customer
     */
    public Customer getCustomer() {
        return customer;
    }

    /**
     * @param customer the customer to set
     */
    public void setCustomer(Customer customer) {
        this.customer = customer;
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
     * @return the billings
     */
    public Set<Billing> getBillings() {
        return billings;
    }

    /**
     * @param billings the billings to set
     */
    public void setBillings(Set<Billing> billings) {
        this.billings = billings;
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
}
