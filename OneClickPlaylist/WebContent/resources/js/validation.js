function CheckAddPlaylist() {
	
	var productId = document.getElementById("playlistId");
	var name = document.getElementById("playlistName");
	
	//플레이리스트 아이디 체크
	if (!check(/^P[0-9]{4,11}$/, playlistId, 
			"[플레이리스트 코드]\nP와 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시 P로 시작하세요"))
			return false;
	//플레이리스트 이름 체크
	if (name.value.length < 4) {
		alert("[플레이리스트 이름]\n최소 4자를 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	
	function check(regExp, e, msg) {
		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	
	document.newPlaylist.submit()
}