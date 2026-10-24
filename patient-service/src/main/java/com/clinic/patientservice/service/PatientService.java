package com.clinic.patientservice.service;

import com.clinic.patientservice.dto.PatientRequestDTO;
import com.clinic.patientservice.dto.PatientResponseDTO;
import com.clinic.patientservice.exception.EmailAlreadyExistsException;
import com.clinic.patientservice.exception.PatientNotFoundExecption;
import com.clinic.patientservice.mapper.PatientMapper;
import com.clinic.patientservice.model.Patient;
import com.clinic.patientservice.repository.PatientRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

@Service
public class PatientService {
    private final PatientRepository patientRepository;

    public PatientService(PatientRepository patientRepository) {
        this.patientRepository = patientRepository;
    }


    public List<PatientResponseDTO> getPatient() {
        List<Patient> patients = patientRepository.findAll();


        return patients.stream().map(PatientMapper::toDTO).toList();// Lambda can be replaced with method reference  PatientMapper.toDTO(patient)
    }

    public PatientResponseDTO createPatient(PatientRequestDTO patientRequestDTO) {
        if (patientRepository.existsByEmail(patientRequestDTO.getEmail())) {
            throw new EmailAlreadyExistsException("A patient with th email" + "already exist" + patientRequestDTO.getEmail());
        }
        Patient newPatient = patientRepository.save(PatientMapper.toModel(patientRequestDTO));
        return PatientMapper.toDTO(newPatient);
    }

    public PatientResponseDTO updatePatient(UUID id, PatientRequestDTO patientRequestDTO) {
        Patient patient = patientRepository.findById(id).orElseThrow(() -> new PatientNotFoundExecption("Patient Not found ID: " + id));

        if (patientRepository.existsByEmail(patientRequestDTO.getEmail())) {
            throw new EmailAlreadyExistsException("A patient with this email" + "already exist" + patientRequestDTO.getEmail());
        }

        patient.setName(patientRequestDTO.getName());
        patient.setAddress(patientRequestDTO.getAddress());
        patient.setEmail(patientRequestDTO.getEmail());
        patient.setDateOfBirth(LocalDate.parse(patientRequestDTO.getDateOfBirth()));


        Patient updatePatient =  patientRepository.save(patient);
        return PatientMapper.toDTO(updatePatient);
    }
}
