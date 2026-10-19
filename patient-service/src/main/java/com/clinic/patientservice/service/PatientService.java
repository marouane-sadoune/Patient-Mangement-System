package com.clinic.patientservice.service;

import com.clinic.patientservice.dto.PatientResponseDTO;
import com.clinic.patientservice.mapper.PatientMapper;
import com.clinic.patientservice.model.Patient;
import com.clinic.patientservice.repository.PatientRepository;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.List;

@Service
public class PatientService {
    private PatientRepository patientRepository;

    public PatientService(PatientRepository patientRepository) {
        this.patientRepository = patientRepository;
    }



    public List<PatientResponseDTO> getPatient(){
        List<Patient> patients = patientRepository.findAll();


        return patients.stream()
                .map(PatientMapper::toDTO).toList();// Lambda can be replaced with method reference  PatientMapper.toDTO(patient)
    }

}
