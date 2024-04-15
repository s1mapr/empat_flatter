package com.empat.javarestapp.services.impl;

import com.empat.javarestapp.entities.Parcel;
import com.empat.javarestapp.repositories.ParcelRepository;
import com.empat.javarestapp.services.ParcelService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ParcelServiceImpl implements ParcelService {
    private final ParcelRepository parcelRepository;

    @Override
    public void createParcel(Parcel parcel){
        parcelRepository.save(parcel);
    }

    @Override
    public List<Parcel> getAllParcels(){
        return parcelRepository.findAll();
    }
}
