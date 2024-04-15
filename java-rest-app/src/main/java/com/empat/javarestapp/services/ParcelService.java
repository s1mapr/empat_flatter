package com.empat.javarestapp.services;

import com.empat.javarestapp.entities.Parcel;

import java.util.List;

public interface ParcelService {

    void createParcel(Parcel parcel);
    List<Parcel> getAllParcels();

}
