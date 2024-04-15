package com.empat.javarestapp.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "parcel")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Parcel {
    @Id
    @Column
    private Long id;
    @Column
    private String dateFrom;
    @Column
    private String dateTo;
    @Column
    private String cityFrom;
    @Column
    private String cityTo;

}
