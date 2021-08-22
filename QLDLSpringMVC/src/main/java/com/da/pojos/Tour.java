/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.pojos;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author CaoNgocCuong
 */
@Entity
@Table (name = "tour")
public class Tour implements Serializable {
    
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    
    @Column (name = "tour_type")
    private String tourType;
    private String photo;
    
    @Column (name = "tour_days")
    private int tourDays;
    
    @Column (name = "tour_nights")
    private int tourNights;
    
    @Column (name = "adults_price")
    private BigDecimal adultsPrice;
    
    @Column (name = "children_price")
    private BigDecimal childrenPrice;
    
    @Column (name = "start_date")
    private Date startDate;
    
    @Column (name = "end_date")
    private Date endDate;
    
    @Column (name = "active")
    private Boolean active;
    
    @OneToMany (mappedBy = "tour")
    private Set<Booking> bookings;

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
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the tourType
     */
    public String getTourType() {
        return tourType;
    }

    /**
     * @param tourType the tourType to set
     */
    public void setTourType(String tourType) {
        this.tourType = tourType;
    }

    /**
     * @return the photo
     */
    public String getPhoto() {
        return photo;
    }

    /**
     * @param photo the photo to set
     */
    public void setPhoto(String photo) {
        this.photo = photo;
    }

    /**
     * @return the tourDays
     */
    public int getTourDays() {
        return tourDays;
    }

    /**
     * @param tourDays the tourDays to set
     */
    public void setTourDays(int tourDays) {
        this.tourDays = tourDays;
    }

    /**
     * @return the tourNights
     */
    public int getTourNights() {
        return tourNights;
    }

    /**
     * @param tourNights the tourNights to set
     */
    public void setTourNights(int tourNights) {
        this.tourNights = tourNights;
    }

    /**
     * @return the adultsPrice
     */
    public BigDecimal getAdultsPrice() {
        return adultsPrice;
    }

    /**
     * @param adultsPrice the adultsPrice to set
     */
    public void setAdultsPrice(BigDecimal adultsPrice) {
        this.adultsPrice = adultsPrice;
    }

    /**
     * @return the childrenPrice
     */
    public BigDecimal getChildrenPrice() {
        return childrenPrice;
    }

    /**
     * @param childrenPrice the childrenPrice to set
     */
    public void setChildrenPrice(BigDecimal childrenPrice) {
        this.childrenPrice = childrenPrice;
    }

    /**
     * @return the startDate
     */
    public Date getStartDate() {
        return startDate;
    }

    /**
     * @param startDate the startDate to set
     */
    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    /**
     * @return the endDate
     */
    public Date getEndDate() {
        return endDate;
    }

    /**
     * @param endDate the endDate to set
     */
    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    /**
     * @return the active
     */
    public Boolean getActive() {
        return active;
    }

    /**
     * @param active the active to set
     */
    public void setActive(Boolean active) {
        this.active = active;
    }

    /**
     * @return the bookings
     */
    public Set<Booking> getBookings() {
        return bookings;
    }

    /**
     * @param bookings the bookings to set
     */
    public void setBookings(Set<Booking> bookings) {
        this.bookings = bookings;
    }
}
