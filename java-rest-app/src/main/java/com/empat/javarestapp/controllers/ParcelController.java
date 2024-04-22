package com.empat.javarestapp.controllers;

import com.empat.javarestapp.entities.Parcel;
import com.empat.javarestapp.services.ParcelService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/parcels")
public class ParcelController {

    private final ParcelService parcelService;

    @PostMapping
    public ResponseEntity<Void> createParcel(@RequestBody Parcel parcel){
        parcelService.createParcel(parcel);
        return ResponseEntity.ok().build();
    }

    @GetMapping
    public ResponseEntity<List<Parcel>> getAllParcels(){
        List<Parcel> parcels = parcelService.getAllParcels();
        return new ResponseEntity<>(parcels, HttpStatus.OK);
    }

    @GetMapping("/word")
    public ResponseEntity<String> getWord(@RequestParam("w") String word){
        String result = word.toUpperCase();
        return new ResponseEntity<>(result, HttpStatus.OK);
    }
}
