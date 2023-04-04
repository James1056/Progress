package csc340.Progress.info;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author tdlga
 */

@Service
public class InfoService {

    @Autowired
    private InfoRepository repo;

    public List<Info> getAllInfo() {
        return repo.findAll();
    }

    public Info getInfo(long infoID) {
        return repo.getReferenceById(infoID);
    }

    public void deleteInfo(long infoID) {
        repo.deleteById(infoID);
    }

    void saveInfo(Info info) {

        repo.save(info);
    }
}
