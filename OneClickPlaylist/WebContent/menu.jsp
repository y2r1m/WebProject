<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="./playlists.jsp"><i class="bi bi-music-note-list"></i> One Click Playlist</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="./playlists.jsp"><i class="bi bi-house-fill"></i> Home</a></li>
                <li class="nav-item"><a class="nav-link" href="./Introduce.jsp">Introduce</a></li>
                <li class="nav-item"><a class="nav-link" href="./addPlaylist.jsp"><i class="bi bi-plus-square"></i> Add Playlist</a></li>
            </ul>
            <form class="d-flex" action="./MyPlaylists.jsp">
                <button class="btn btn-outline-dark" type="submit">
                    <i class="bi bi-headphones"></i>
                    My Playlists
                </button>
            </form>
        </div>
    </div>
</nav>