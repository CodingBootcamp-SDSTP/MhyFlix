import java.util.ArrayList;

public class VideoCollection
{
	private ArrayList<Video> videos;
	
	public VideoCollection() {
		videos = new ArrayList<Video>();
	}

	public void addVideo(Video video) {
		videos.add(video);
	}

	public void removeVideo(Video video) {
		videos.remove(video);
	}

	public ArrayList<Video> getAllVideo() {
		return(videos);
	}

	public Video getVideoByIndex(int n) {
		return(videos.get(n));
	}

	public int getAllVideosCount() {
		return(videos.size());
	}
}
