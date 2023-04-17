package com.csc340.Progress.video;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.csc340.Progress.user.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author Dallin Pierce
 */
@Controller
@RequestMapping("/trainer-vids")
public class VideoController {
    
    @Autowired
    VideoService videoService;
    
    @Autowired
    UserService userService;
    
    private static final String KEY = "AIzaSyAXoeQ1q_b2ReCSDi8mb2EaxoIf2sRptXA";
    
    @GetMapping("/all/id={trainerId}")
    public String getVideos(@PathVariable long trainerId, Model model) throws JsonProcessingException {
        RestTemplate restTemplate = new RestTemplate();
        ObjectMapper mapper = new ObjectMapper();
        List<Video> videoList = videoService.getVideosByTrainerId(trainerId);
        for(Video video : videoList){
            String url = "https://youtube.googleapis.com/youtube/v3/videos?key=" + KEY 
                                + "&fields=items(snippet(title,thumbnails(high(url))))"
                                + "&id=" + video.getYoutubeId() + "&part=snippet";
            String jSonVideo = restTemplate.getForObject(url, String.class);
            JsonNode root = mapper.readTree(jSonVideo);
            video.setTitle( root.at("/items/0/snippet/title").asText());
            video.setThumbnail(root.at("/items/0/snippet/thumbnails/high/url").asText());
        }
        model.addAttribute("videoList", videoList);
        model.addAttribute("trainer", userService.getUserById(trainerId));
        return "video/videos";
    }
    
    @GetMapping("/vid={id}")
    public String getVideo(@PathVariable long id, Model model) throws JsonProcessingException {
        RestTemplate restTemplate = new RestTemplate();
        ObjectMapper mapper = new ObjectMapper();
        Video video = videoService.getVideo(id);
        
        String url = "https://youtube.googleapis.com/youtube/v3/videos?key=" + KEY 
                            + "&fields=items(snippet(title))"
                            + "&id=" + video.getYoutubeId() + "&part=snippet";
        String jSonVideo = restTemplate.getForObject(url, String.class);
        JsonNode root = mapper.readTree(jSonVideo);
        
        video.setTitle( root.at("/items/0/snippet/title").asText());
        model.addAttribute("video", video);
        return "video/view_video";
    }
    
    @PostMapping("/create")
    public String createVideo(Video video){
        videoService.saveVideo(video);
        return "redirect:/trainer-vids/all/id=" + video.getTrainerId();
    }
    
    @GetMapping("/new-vid")
    public String newVidForm(Authentication auth, Model model) {
        UserDetails userPrincipal = (UserDetails)auth.getPrincipal();
        model.addAttribute("currentUser", userService.getUserByUsername(userPrincipal.getUsername()));
        return "video/post";
    }
    
}
