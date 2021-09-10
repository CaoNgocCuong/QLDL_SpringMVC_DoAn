/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.pojos;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author CaoNgocCuong
 */

@Entity
@Table (name = "rating")
public class Rating implements Serializable {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column (name = "rating")
    private int rating;
    
    private String comment;
    
    @Column (name = "rating_date")
    private Date ratingDate;
    
    @ManyToOne
    @JoinColumn (name = "user_id")
    private User user;
    
    @ManyToOne
    @JoinColumn (name = "tour_id")
    private Tour tour;

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
     * @return the rating
     */
    public int getRating() {
        return rating;
    }

    /**
     * @param rating the rating to set
     */
    public void setRating(int rating) {
        this.rating = rating;
    }

    /**
     * @return the comment
     */
    public String getComment() {
        return comment;
    }

    /**
     * @param comment the comment to set
     */
    public void setComment(String comment) {
        this.comment = comment;
    }

    /**
     * @return the ratingDate
     */
    public Date getRatingDate() {
        return ratingDate;
    }

    /**
     * @param ratingDate the ratingDate to set
     */
    public void setRatingDate(Date ratingDate) {
        this.ratingDate = ratingDate;
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
}
