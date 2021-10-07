/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.pojos;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.web.multipart.MultipartFile;

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
    @NotBlank(message = "{Tour.Blank.error}")
    private String name;
    
    @Column (name = "tour_type")
    @NotBlank(message = "{Tour.Blank.error}")
    private String tourType;
    private String photo;
    
    @Column (name = "tour_days")
    @Min(value = 1, message = "{Tour.minDays.error}")
    @Max(value = 10, message = "{Tour.maxDays.error}")
    private int tourDays;
    
    @Column (name = "tour_nights")
    @Min(value = 1, message = "{Tour.minNights.error}")
    @Max(value = 10, message = "{Tour.maxNights.error}")
    private int tourNights;
    
    @Column (name = "adults_price")
    @NotNull(message = "{Tour.Blank.error}")
    @Min(value = 100000, message = "{Tour.minPrices.error}")
    @Max(value = 10000000, message = "{Tour.maxPrices.error}")
    private BigDecimal adultsPrice;
    
    @Column (name = "children_price")
    @Min(value = 100000, message = "{Tour.minPrices.error}")
    @Max(value = 10000000, message = "{Tour.maxPrices.error}")
    private BigDecimal childrenPrice;
    
    @Column (name = "start_date")
    private Date startDate;
    
    @Column (name = "end_date")
    private Date endDate;
    
    @Column (name = "active")
    private Boolean active;
    
    @NotBlank(message = "{Tour.Blank.error}")
    private String introduction;
    @NotBlank(message = "{Tour.Blank.error}")
    private String service;
    @NotBlank(message = "{Tour.Blank.error}")
    private String note;
    @Column (name = "min_customer")
    @NotNull(message = "{Tour.Blank.error}")
    @Min(value = 10, message = "{Tour.minCustomers.error}")
    @Max(value = 50, message = "{Tour.maxCustomers.error}")
    private int minCustomer;
    @Column (name = "max_customer")
    @NotNull(message = "{Tour.Blank.error}")
    @Min(value = 10, message = "{Tour.minCustomers.error}")
    @Max(value = 50, message = "{Tour.maxCustomers.error}")
    private int maxCustomer;
    @NotBlank(message = "{Tour.Blank.error}")
    private String country;
    
    @Transient
    private MultipartFile file;
    
    @OneToMany(mappedBy = "tour", fetch = FetchType.EAGER)
    private Set<TourDetail> tourDetails = new HashSet<>();
     
    @OneToMany (mappedBy = "tour")
    private Set<Booking> bookings;
    
    @OneToMany (mappedBy = "tour", fetch = FetchType.EAGER)
    private Set<TourPhoto> tourPhotos = new HashSet<>();
    
    @OneToMany (mappedBy = "tour", fetch = FetchType.EAGER)
    private Set<Rating> ratings;

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


    /**
     * @return the tourPhotos
     */
    public Set<TourPhoto> getTourPhotos() {
        return tourPhotos;
    }

    /**
     * @param tourPhotos the tourPhotos to set
     */
    public void setTourPhotos(Set<TourPhoto> tourPhotos) {
        this.tourPhotos = tourPhotos;
    }

    /**
     * @return the ratings
     */
    public Set<Rating> getRatings() {
        return ratings;
    }

    /**
     * @param ratings the ratings to set
     */
    public void setRatings(Set<Rating> ratings) {
        this.ratings = ratings;
    }

    /**
     * @return the file
     */
    public MultipartFile getFile() {
        return file;
    }

    /**
     * @param file the file to set
     */
    public void setFile(MultipartFile file) {
        this.file = file;
    }

    /**
     * @return the introduction
     */
    public String getIntroduction() {
        return introduction;
    }

    /**
     * @param introduction the introduction to set
     */
    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    /**
     * @return the service
     */
    public String getService() {
        return service;
    }

    /**
     * @param service the service to set
     */
    public void setService(String service) {
        this.service = service;
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
     * @return the minCustomer
     */
    public int getMinCustomer() {
        return minCustomer;
    }

    /**
     * @param minCustomer the minCustomer to set
     */
    public void setMinCustomer(int minCustomer) {
        this.minCustomer = minCustomer;
    }

    /**
     * @return the maxCustomer
     */
    public int getMaxCustomer() {
        return maxCustomer;
    }

    /**
     * @param maxCustomer the maxCustomer to set
     */
    public void setMaxCustomer(int maxCustomer) {
        this.maxCustomer = maxCustomer;
    }

    /**
     * @return the country
     */
    public String getCountry() {
        return country;
    }

    /**
     * @param country the country to set
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * @return the tourDetails
     */
    public Set<TourDetail> getTourDetails() {
        return tourDetails;
    }

    /**
     * @param tourDetails the tourDetails to set
     */
    public void setTourDetails(Set<TourDetail> tourDetails) {
        this.tourDetails = tourDetails;
    }
}
