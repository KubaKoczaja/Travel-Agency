package com.dit.travel_agency.service;

import com.dit.travel_agency.model.Participant;
import com.dit.travel_agency.repository.ParticipantRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ParticipantService {
    private ParticipantRepository participantRepository;

    public ParticipantService(ParticipantRepository participantRepository) {
        this.participantRepository = participantRepository;
    }

//    public void addParticipant(List<Participant> participantList) {
//        participantRepository.saveAll(participantList);
//    }
    public void addParticipant(Participant participant) {
        participantRepository.save(participant);
    }
}
