package com.csc340.Progress.partnerRequest;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csc340.Progress.user.UserRepository;

@Service
public class PartnerService {
    
    @Autowired
    private PartnerRepository partnerRepo;

    @Autowired
    private MessageRepository messageRepo;

    @Autowired
    private UserRepository userRepo;
    
    public List<PartnerRequest> getAllRequests() {
        List<PartnerRequest> requestList = partnerRepo.findAll();
        for(PartnerRequest request : requestList) {
            request.setUser(userRepo.findUserById(request.getUser_id()));
        }
        return requestList;
    }

    public PartnerRequest getRequest(long id) {
        PartnerRequest request = partnerRepo.getReferenceById(id);
        request.setUser(userRepo.findUserById(request.getUser_id()));
        return request;
    }

    public void saveRequest(PartnerRequest partnerRequest) {
        partnerRepo.save(partnerRequest);
    }

    public Message getMessage(long id) {
        Message message = messageRepo.getReferenceById(id);
        message.setUser(userRepo.findUserById(message.getResponse_user_id()));
        return message;
    }

    public List<Message> getAllMessages() {
        List<Message> messageList = messageRepo.findAll();
        for(Message message : messageList) {
            message.setUser(userRepo.findUserById(message.getResponse_user_id()));
        }
        return messageList;
    }

    public void saveMessage(Message message) {
        messageRepo.save(message);
    }

    public List<Message> getMessagesByRequestId(long requestId) {
        List<Message> messageList = getAllMessages();
        List<Message> messageListById = new ArrayList();
        for(Message message : messageList) {
            if (message.getRequestid() == requestId) {
                messageListById.add(message);
            }
        }
        return messageListById;
    }
}
