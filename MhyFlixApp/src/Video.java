public class Video
{
	private final String fileName;
	private final String fileType;
	private final String description;
	private final String location;
	private final String date_upload;
	private final int accessType;
	
	public Video(String fileName, String fileType, String description, String location, String date_upload, int accessType) {
		this.fileName = fileName;
		this.fileType = fileType;
		this.description = description;
		this.location = location;
		this.date_upload = date_upload;
		this.accessType = accessType;
	}

	public String getFileName() {
		return(fileName);
	}

	public String getFileType() {
		return(fileType);
	}

	public String getDescription() {
		return(description);
	}

	public String getLocation() {
		return(location);
	}

	public String getDateUpload() {
		return(date_upload);
	}

	public int getAccessType() {
		return(accessType);
	}

	public String toString() {
		return("<name>" + getFileName() + "</name><type>" + getFileType() + "</type><description>" + getDescription()
				+ "</description><path>" + getLocation() + "</path><dateUpload>" + getDateUpload() + "</dateUpload><accessType>" + getAccessType() + "</accessType>");
	}
}
