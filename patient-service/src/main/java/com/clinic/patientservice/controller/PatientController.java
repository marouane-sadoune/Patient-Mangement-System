package com.clinic.patientservice.controller;

import com.clinic.patientservice.dto.PatientResponseDTO;
import com.clinic.patientservice.service.PatientService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/patients") // localhost:4000/patients
public class PatientController {
    private final PatientService patientsService;

    public PatientController(PatientService patientsService) {
        this.patientsService = patientsService;
    }

    @GetMapping
    public ResponseEntity<List<PatientResponseDTO>> getAllPatients(){
        List<PatientResponseDTO> patients = patientsService.getPatient();
        return  ResponseEntity.ok().body(patients);
    }
}
