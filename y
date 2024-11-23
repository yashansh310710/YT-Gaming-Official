<!DOCTYPE html>
<html>
<head>
  <title>YT Gaming Official</title>
  <style>
    body {
      position: relative;
      height: 200%;
      margin: 0;
      overflow: auto;
    }
    .video-bg {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      object-fit: cover;
      z-index: -1; /* Ensure the video is behind the content */
    }
    .wrapper {
      text-align: center;
      padding: 20px;
      z-index: 1;
      background-color: transparent;
    }
    .content {
      color: red; /* Normal red color */
    }
    .footer {
      margin-top: 20px;
      text-align: center;
      color: red; /* Normal red color */
    }
    /* Increase size of links */
    a {
      font-size: 20px;
      padding: 10px;
      color: red; /* Normal red color */
    }
    /* Increase size of subscriber count */
    #subscriberCount {
      font-size: 36px; /* Increased font size */
      font-weight: bold;
      color: black; /* Black color */
    }
    /* Increase size of "Live Subscriber Count" text */
    #liveSubsText {
      font-size: 36px; /* Increased font size */
    }
    .comments-section {
      margin-top: 50px;
      text-align: left;
      width: 60%;
      margin: 50px auto;
    }
    .comment-box {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      font-size: 16px;
    }
    .comment {
      border-bottom: 1px solid #ddd;
      padding: 10px 0;
    }
    .comment h4 {
      margin: 0;
    }
    .comment p {
      margin: 5px 0 0 0;
    }
  </style>
</head>
<body>
  <video autoplay loop muted class="video-bg">
    <source src="5873420-uhd_2160_3840_24fps.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>

  <div class="wrapper">
    <div class="content">
      <h1>Welcome to Our YouTube Channel!</h1>
      <h2>We create awesome content just for you!</h2>

      <!-- Subscriber Count Section below Welcome Text -->
      <div>
        <h1 id="liveSubsText">Live Subscriber Count:</h1>
        <p id="subscriberCount">Fetching subscriber count...</p>
      </div>

      <!-- Video Section 1 -->
      <div>
        <h1>Check out our latest video:</h1>
        <h2>Watch this amazing video showcasing the best moments in Free Fire!</h2>
        <video controls width="640" height="360">
          <source src="Best-Free-Fire-Headshot-HD-Status-Video.mp4" type="video/mp4">
          Your browser does not support the video tag.
        </video>
      </div>

      <!-- Links to Video 1 -->
      <div>
        <a href="https://www.youtube.com/channel/UC953-zzrgwDwijxYHzFS4nQ" target="_blank">Visit Our YouTube Channel</a>
        <br>
        <a href="https://youtu.be/qkNzdm-l6FU?si=8kFWEJ4YmfqOz9z9" target="_blank">Watch Our Latest Video</a>
      </div>

      <!-- Video Section 2 -->
      <div>
        <h1>Check out our second video:</h1>
        <h2>Experience the thrill of headshots in Free Fire with this action-packed video!</h2>
        <video controls width="640" height="360">
          <source src="best-song-headshot_shorts-_freefireshorts-_freefire-headshot-song_freefireshorts-edit720P_HD.mp4" type="video/mp4">
          Your browser does not support the video tag.
        </video>
      </div>

      <!-- Links to Video 2 -->
      <div>
        <a href="https://youtube.com/shorts/c69oxWG1UNU?si=QMNtl99ja6wNj_0s" target="_blank">Watch Our Second Video</a>
      </div>

      <!-- Video Section 3 -->
      <div>
        <h1>Check out our third video:</h1>
        <h2>Enjoy the adrenaline rush with this epic Free Fire status video!</h2>
        <video controls width="640" height="360">
          <source src="Free-Fire-4k-status-video-FreeFire-whatsapp-statue-Free-Fire-Attitude-status-slow-motion-video-short720P_HD.mp4" type="video/mp4">
          Your browser does not support the video tag.
        </video>
      </div>

      <!-- Links to Video 3 -->
      <div>
        <a href="https://youtu.be/I8_U1I7d6V8?si=dinrBJnx6RMrYekq" target="_blank">Watch Our Third Video</a>
      </div>

      <!-- Video Section 4 -->
      <div>
        <h1>Check out our Fourth video:</h1>
        <h2>Watch this new exciting video!</h2>
        <video controls width="640" height="360">
          <source src="free-fire-headshot-status-video-song720P_HD.mp4" type="video/mp4">
          Your browser does not support the video tag.
        </video>
        <br>
        <a href="https://youtube.com/shorts/fZGp29jsXGA?si=PDwQr9sXg-fWw7AS" target="_blank">Watch this video on YouTube</a>
      </div>

      <!-- Video Section 5 -->
      <div>
        <h1>Check out our fifth video:</h1>
        <h2>Don't miss this fantastic video full of action and fun!</h2>
        <video controls width="640" height="360">
          <source src="Kya-Chij-Ho-Tum-_-free-fire-status-_shorts-_freefire-_viral720P_HD.mp4" type="video/mp4">
          Your browser does not support the video tag.
        </video>
        <br>
        <a href="your-fifth-video-link" target="_blank">Watch this video on YouTube</a>
      </div>

      <!-- Subscriber Count Section at top-->
      <div>
        <h1 id="liveSubsText">Live Subscriber Count:</h1>
        <p id="subscriberCount">Fetching subscriber count...</p>
      </div>

      <!-- Comment Section -->
<div class="comments-section">
  <h2>Comments</h2>
  <input type="text" id="name-box" class="comment-box" placeholder="Your name...">
  <textarea id="comment-box" class="comment-box" placeholder="Write a comment..."></textarea>
  <button onclick="postComment()">Post Comment</button>
  <div id="comments-container"></div>
</div>

<!-- JavaScript code -->
<script>
  // Function to fetch subscriber count from YouTube Data API
  function fetchSubscriberCount() {
    var apiKey = 'AIzaSyBCaCY1Dl_dTWvwFETcjTH1aYEfe699IAk'; // 
    var channelId = 'UC953-zzrgwDwijxYHzFS4nQ';
    var apiUrl = 'https://www.googleapis.com/youtube/v3/channels?part=statistics&id=' + channelId + '&key=' + apiKey;

    fetch(apiUrl)
      .then(response => response.json())
      .then(data => {
        var subscriberCount = parseInt(data.items[0].statistics.subscriberCount);
        var subscriberCountElements = document.querySelectorAll('#subscriberCount');
        subscriberCountElements.forEach(element => {
          element.textContent = 'Subscriber count: ' + subscriberCount.toLocaleString();
        });
      })
      .catch(error => {
        console.error('Error fetching subscriber count:', error);
        var subscriberCountElements = document.querySelectorAll('#subscriberCount');
        subscriberCountElements.forEach(element => {
          element.textContent = 'Failed to fetch subscriber count';
        });
      });
  }

  // Function to post a comment
  function postComment() {
    var nameBox = document.getElementById('name-box');
    var commentBox = document.getElementById('comment-box');
    var name = nameBox.value.trim();
    var commentText = commentBox.value.trim();

    if (name === '' || commentText === '') {
      alert('Please enter both your name and comment.');
      return;
    }

    var commentsContainer = document.getElementById('comments-container');
    var commentElement = document.createElement('div');
    commentElement.classList.add('comment');
    commentElement.innerHTML = '<h4>' + name + '</h4><p>' + commentText + '</p>';

    // Create a delete button for the comment
    var deleteButton = document.createElement('button');
    deleteButton.textContent = 'Delete';
    deleteButton.onclick = function() {
      commentsContainer.removeChild(commentElement);
    };
    commentElement.appendChild(deleteButton);

    commentsContainer.appendChild(commentElement);

    // Clear input fields
    nameBox.value = '';
    commentBox.value = '';
  }

  // Fetch subscriber count when the page loads
  window.onload = fetchSubscriberCount;
</script>
