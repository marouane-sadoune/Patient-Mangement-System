package com.clinic.patientservice.exception;

public class PatientNotFoundExecption extends RuntimeException {
    public PatientNotFoundExecption(String message) {
        super(message);
    }
}
