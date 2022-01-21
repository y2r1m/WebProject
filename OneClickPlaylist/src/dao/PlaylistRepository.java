package dao;

import java.util.ArrayList;
import dto.Playlist;

public class PlaylistRepository {
	
	private ArrayList<Playlist> listOfPlaylists = new ArrayList<Playlist>();
	private static PlaylistRepository instance = new PlaylistRepository();
	
	public static PlaylistRepository getInstance() {
		return instance;
	}
	
	public PlaylistRepository() {
		Playlist p1 = new Playlist("P0001", "������� ũ�������� ��ٸ��� ���? Merry Christmas Carol");
		p1.setDescription("�̸� �޸� ũ��������!");
		p1.setMelonLink("14776 4365842 4322520 330407 5475060 3592400 32160237 30644028 32156032 32158103 30677492 33025517 32250531 3592402 3969017");
		p1.setGenieLink("82146674 82170772 82119386 87582939 82975165 81139361 89564174 87489274 89557918 89564208 87484589 91200729 89717508 81139363 81630001");
		p1.setBugsLink("14776 3318679 74431016 74566893 3778011 2484637 5791980 4994862 80265755 5792243 5011442 74439226 67318132 2484639 2819327");
		p1.setYouTube("https://www.youtube.com/watch?v=j59HTVY1oCc");
		listOfPlaylists.add(p1);
		
		Playlist p2 = new Playlist("P0002", "�������� ��Ҹ��� õõ�� ���� ���� ��.");
		p2.setDescription("���� ���� �ʴ� ��, ������ ��� ���� �뷡");
		p2.setMelonLink("30314784 3053257 2288058 4268444 32378104 7896509 30378157 4369838 32182535 2377854 32183385 5700639 32183387 30378164 30378163 30378161 7896511 4369834 4646570 4646575 30646587 3053254 3796969 32143487 1929323");
		p2.setGenieLink("87034188 80897958 80171087 82066907 89859975 85295999 87101805 82066904 89612642 80580058 89613038 84055796 89613040 87101812 87101811 87101809 85296001 82066900 82566971 82566967 87452924 80897956 81342096 89530447 67873114");
		p2.setBugsLink("30598121 2150695 1801911 3226157 31833551 4607106 30632854 3226154 5803644 1846949 5803784 4345083 5803786 30632861 30632860 30632858 4607108 3226150 3511606 3511610 4995787 2150693 2652788 31740348 1603334");
		p2.setYouTube("https://www.youtube.com/watch?v=N75MHF7lMzo");
		listOfPlaylists.add(p2);

		Playlist p3 = new Playlist("P0003", "Disney OST 1 Hour | ����� OST ���� | �� �߿� �־ְ� �ϳ����� ������?");
		p3.setDescription("�������� ���ư��� Disney OST ����");
		p3.setMelonLink("5620916 3142748 3142754 30199165 30199168 31815956 31815967 31815962 30696441 2373459 1675751 386343 384426 2731272 8280436 3860008 3951226 4342896 4342898 4345624 32180584 32180587 32180594 8048711");
		p3.setGenieLink("84750794 80950395 80950401 86883554 86883557 88965627 88965638 88965633 87538706 80797045 51072511 89126163 88817762 80776041 87675750 90294801 81640562 82222658 82222656 82159271 89602793 89602795 89602798 85944510");
		p3.setBugsLink("3951590 64216066 2251569 4842560 4842563 5647362 5647373 5647368 5022102 1845715 61036806 5669169 61088366 2027530 3304615 2720909 2823335 3305899 3305901 3305904 5802552 5802554 5802557 4674464");
		p3.setYouTube("https://www.youtube.com/watch?v=8pXX2kZNORA");
		listOfPlaylists.add(p3);
		
		Playlist p4 = new Playlist("P0004", "���� ������ ���� ������ �ɱ׷� �汸�� �ܼ�Ʈ | concert Start Playlist");
		p4.setDescription("Par1. �Ʒ��� �����ΰ� | Part2. ����� ��Ʈ | Part3. �� ��� ź��ó�� | Part4. ��Ȥ��ȭ | Part5. �̷�����\r\n" + 
							"�ټ� ���� ��Ʈ�� �̷���� �Ϻ��� �ܼ�Ʈ�� ���� �ʹٸ�");
		p4.setMelonLink("31556500 30827192 30005102 9604600 8158015 33487342 31717822 32860419 30911238 8304617 33559180 8279153 33487708 30512671 33464805 32511830 32748910 32772984 32387963 32273582 8150498 30069774 5629334 30054350 8300804");
		p4.setGenieLink("88545599 87667080 86622079 86534385 86180166 93330349 88740321 90676965 87784430 86525847 93506686 86462787 93330389 87270282 93269771 90079759 90485955 90512667 89871408 89744994 86162020 86700925 83601055 86682899 86497491");
		p4.setBugsLink("31413840 30911050 30399420 30356625 30233392 32235760 31535714 31994992 30961039 30349479 32254320 30329475 32235827 30712317 78889403 31878895 31961769 31967971 31835755 31793255 30226607 30436008 3964264 30428044 30346639");
		p4.setYouTube("https://www.youtube.com/watch?v=uz5r1HRUb4A");
		listOfPlaylists.add(p4);
		
		Playlist p5 = new Playlist("P0005", "�ܿ� ���� ������ ���� �� ��� ����Ƽ �뷡 | NCT winter playlist");
		p5.setDescription("NCT �ҵ� �𿩶�! ���� 58������ ���� ��~ �ø�");
		p5.setMelonLink("30750993 32252266 31345640 33082151 33901881 33347496 34033714 31523572 30791821 32550664 31794957 33082164 32393678 33403039 31283803 33456227 30189028 30836801 31649820 31345644 31121498 33299915 32979576 32588775 31745388 8032859 33456226 31345636 34063336 30584543 8262118 31951252 32393672 33456225 31345638 33901884 31492723 31345639 33628129 31936261 30669683 30950540 33456228 32393680 31703479 33082163 31283801 33901880 32550662 31444526 8289638 32979575 30189025 32393671 33799706 30189027 31794956 33901887");
		p5.setGenieLink("87572964 89712938 88292335 91458627 94226751 92607252 93689965 88504776 87609534 90139707 88928984 91458640 89884893 92923591 88222285 93227622 86866401 87677571 88668063 88292339 88024590 92336914 90997781 90198918 88808185 85887083 93227621 88292332 94546095 87380350 86427563 89255345 89884887 93227620 88292333 94226754 88469826 88292334 93633154 89237415 87476006 87830004 93227623 89884895 88727918 91458639 88222288 94226750 90139705 88402395 86472395 90997780 86856621 89884886 94009156 86856623 88928983 94226757");
		p5.setBugsLink("30857568 31783180 5448107 32077558 6129002 32179740 32348275 31392353 30883702 5893757 31584563 32077571 5862124 6102555 5371065 6109182 4840741 30915842 31489631 5448119 31101063 32153101 5996478 5901273 31553453 30141093 6109181 5448104 32352670 30753028 4758568 5703086 5862127 6109169 5448105 6127792 31369191 5448106 6116610 31655495 30807768 5150575 6108593 5863168 31526372 32077570 5371063 6129001 5894808 5506846 30337091 5996477 4840738 5863166 6125169 4840740 31584562 6129005");
		p5.setYouTube("https://www.youtube.com/watch?v=__QeTps-Lik");
		listOfPlaylists.add(p5);

		Playlist p6 = new Playlist("P0006", "���� �� �ո��� �����ο� ������ �뷡 ���� | PLAYLIST");
		p6.setDescription("û���� �ÿ����� ������ �ʹٸ�!");
		p6.setMelonLink("33527705 8279153 31133898 33666269 32907450 31241791 30512673 32745518 31996469 30698795 7844372 32781789 7877917 3964349 4221101 3026177 33026570 33284452 31927279 3957644 3850235 31622668 4232200 30337189 7881233 5734275 484861 1322134 3870709 8128602 1525533 2979494");
		p6.setGenieLink("93409581 86462787 88048450 93721048 90788599 88166155 87270284 90484474 89314527 87514410 84964151 90524854 85140992 81626995 82024540 80874398 91209113 92326786 89220631 81610343 81392618 88627359 82034786 87047183 85202215 84282762 82946035 40979749 16158017 86120804 44239446 80847754");
		p6.setBugsLink("6112553 30329475 5251443 6118632 71578163 31183131 30712319 5947921 31678921 30825961 4551004 31970069 4592977 2815212 3179825 2124724 32054759 6074503 31650953 2807326 2702927 31468331 3191346 30606132 4595563 4399988 484861 80245255 2726180 30209351 80286421 2102987");
		p6.setYouTube("https://www.youtube.com/watch?v=Rt-WOK6-gxo");
		listOfPlaylists.add(p6);
	}
	
	public ArrayList<Playlist> getAllPlaylists() {
		return listOfPlaylists;
	}
	
	public Playlist getPlaylistById(String playlistId) {
		Playlist playlistById = null;
		
		for (int i = 0; i < listOfPlaylists.size(); i++) {
			Playlist playlist = listOfPlaylists.get(i);
			if (playlist != null && playlist.getPlaylistId() != null && playlist.getPlaylistId().equals(playlistId)) {
				playlistById = playlist;
				break;
			}
		}
		return playlistById;
	}
	
	public void addPlaylist(Playlist playlist) {
		listOfPlaylists.add(playlist);
	}
}