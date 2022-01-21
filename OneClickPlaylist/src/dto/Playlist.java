package dto;

import java.io.Serializable;

public class Playlist implements Serializable {
	
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String playlistId;		//�÷��̸���Ʈ ���̵�
	private String playlistName;	//�÷��̸���Ʈ �̸�	
	private String description;		//�÷��̸���Ʈ ����
	private String MelonWindow = "melonapp://play?cType=1&cList=songId,songId";
	private String GeniePC = "https://www.genie.co.kr/player/shareProcessV2?xgnm=songId;songId";
	private String BugsPC = "https://music.bugs.co.kr/newPlayer?trackId=songId,songId";
	private String melonLink;
	private String genieLink;
	private String bugsLink;
//	private String MelonMac_front = "melonplayer://play?ref=&cid=";
//	private String MelonMac_end = "&cflag=1";
//	private String MelonMac;
//	private String MeloniPad = "melonipad://play/?ctype=1&menuid=0&cid=songId,songId";
//	private String MelonMobile = "melonapp://play?cType=1&cList=songId,songId";\
//	private String GenieAndroid = "cromegenie://scan/?landing_type=31&landing_target=songId;songId";
//	private String GenieIOS = "ktolleh00167://landing/?landing_type=31&landing_target=songId;songId";
//	private String BugsMobile = "bugs3://app/tracks/lists?title=��ü���&miniplay=Y&track_ids=songId|songId";
//	private String VibeMobile = "vibe://listen?version=3&trackIds=songId,songId";
	private String thumbnailImg;
	private String YouTube; //��Ʃ��
	 //���: ',' / ���������: '|' / ����: ';' �� ����
	private int quantity;			//��ٱ��Ͽ� ���� ����
	
	public Playlist() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Playlist(String playlistId, String playlistName) {
		this.playlistId = playlistId;
		this.playlistName = playlistName;
	}

	public String getPlaylistId() {
		return playlistId;
	}

	public void setPlaylistId(String playlistId) {
		this.playlistId = playlistId;
	}

	public String getPlaylistName() {
		return playlistName;
	}

	public void setPlaylistName(String playlistName) {
		this.playlistName = playlistName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getYouTube() {
		return YouTube;
	}

	public void setYouTube(String youTube) {
		YouTube = youTube;
	}

	public String getMelonLink() {
		return melonLink;
	}

	public void setMelonLink(String songIds) {
		String[] songId = songIds.split(" ");
		String songIdDump = "";
		for (int i=0; i<songId.length; i++) {
			songIdDump = songIdDump + songId[i] + ",";
		}
		songIdDump = songIdDump.substring(0, songIdDump.length()-1);
		melonLink = MelonWindow + songIdDump;
	}
	
	public String getGenieLink() {
		return genieLink;
	}

	public void setGenieLink(String songIds) {
		String[] songId = songIds.split(" ");
		String songIdDump = "";
		songId = songIds.split(" ");
		for (int i=0; i<songId.length; i++) {
			songIdDump = songIdDump + songId[i] + ";";
		}
		songIdDump = songIdDump.substring(0, songIdDump.length()-1);
		genieLink = GeniePC + songIdDump;
	}

	public String getBugsLink() {
		return bugsLink;
	}

	public void setBugsLink(String songIds) {
		String[] songId = songIds.split(" ");
		String songIdDump = "";
		songId = songIds.split(" ");
		for (int i=0; i<songId.length; i++) {
			songIdDump = songIdDump + songId[i] + ",";
		}
		songIdDump = songIdDump.substring(0, songIdDump.length()-1);
		bugsLink = BugsPC + songIdDump;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getThumb_fname() {
		return thumbnailImg;
	}

	public void setThumb_fname(String thumbnailImg) {
		this.thumbnailImg = thumbnailImg;
	}
}
