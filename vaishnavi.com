<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>For My Vaishnavi ❤️</title>

<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600&family=Playfair+Display:wght@600&family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">

<style>
:root{
  --primary:#c2185b;
  --glass:rgba(255,255,255,.92);
}

*{box-sizing:border-box}

body{
  margin:0;
  font-family:Poppins,sans-serif;
  background:linear-gradient(135deg,#fff0f3,#ffe6e9);
  color:#444;
  overflow-x:hidden;
}

/* ========== PASSWORD SCREEN ========== */
#lockScreen{
  position:fixed; inset:0;
  background:#000;
  display:flex;
  flex-direction:column;
  justify-content:center;
  align-items:center;
  z-index:10000;
  color:white;
}
#lockScreen input{
  padding:12px 20px;
  border-radius:25px;
  border:none;
  margin:15px 0;
  font-size:1rem;
}

/* ========== START SCREEN ========== */
#startScreen{
  position:fixed; inset:0;
  background:#000;
  display:none;
  flex-direction:column;
  justify-content:center;
  align-items:center;
  color:white;
  z-index:9000;
}

/* ========== BACKGROUND HEARTS ========== */
#bgHearts{
  position:fixed; inset:0;
  z-index:-1;
  overflow:hidden;
}
.heart{
  position:absolute;
  bottom:-40px;
  opacity:.3;
  animation:floatUp linear infinite;
}
@keyframes floatUp{
  to{transform:translateY(-110vh) rotate(360deg)}
}

/* ========== SECTIONS ========== */
section{
  max-width:650px;
  margin:40px auto;
  padding:30px 25px;
  background:var(--glass);
  border-radius:20px;
  box-shadow:0 10px 30px rgba(0,0,0,.08);
  text-align:center;
  opacity:0;
  transform:translateY(30px);
  transition:.8s;
}
section.show{opacity:1;transform:none}

h1,h2{
  font-family:Playfair Display,serif;
  color:var(--primary);
}

.textBox{
  text-align:left;
  background:#fff;
  padding:20px;
  border-radius:15px;
  border-left:5px solid var(--primary);
}

/* ========== TIMER ========== */
.timer{
  display:flex;
  justify-content:space-around;
  background:#fff;
  padding:15px;
  border-radius:15px;
}
.timer span{
  font-size:1.6rem;
  font-weight:700;
  color:var(--primary);
}

/* ========== CHAT ========== */
.chat{
  background:#efe7dd;
  height:280px;
  overflow-y:auto;
  padding:15px;
  border-radius:15px;
  display:flex;
  flex-direction:column;
}
.msg{
  background:#dcf8c6;
  padding:10px 15px;
  border-radius:15px;
  margin:8px 0;
  max-width:80%;
  align-self:flex-end;
}

/* ========== POETRY ========== */
.poetry{
  font-family:Dancing Script,cursive;
  font-size:1.6rem;
  color:#880e4f;
}
.signature{
  display:block;
  margin-top:15px;
  font-size:1.8rem;
  color:#c2185b;
}

/* ========== PROMISE ========== */
.jar{font-size:80px;cursor:pointer}

/* ========== MODAL ========== */
#modal{
  position:fixed; inset:0;
  background:rgba(0,0,0,.7);
  display:none;
  justify-content:center;
  align-items:center;
}
.modalBox{
  background:#fff;
  padding:30px;
  border-radius:20px;
  text-align:center;
}
.modalText{
  font-family:Dancing Script,cursive;
  font-size:2rem;
  color:var(--primary);
}

/* ========== WHATSAPP ========== */
#waBtn{
  position:fixed;
  bottom:20px;
  right:20px;
  background:#25d366;
  color:#fff;
  padding:12px 22px;
  border-radius:40px;
  text-decoration:none;
  font-weight:600;
  display:none;
}
</style>
</head>

<body>

<!-- PASSWORD -->
<div id="lockScreen">
  <h2>Only for Vaishnavi 💖</h2>
  <input id="passwordInput" type="password" placeholder="Enter password">
  <button onclick="unlock()">Enter</button>
  <p id="error" style="color:#ff6b6b"></p>
</div>

<!-- START -->
<div id="startScreen">
  <h1>For My Vaishnavi ❤️</h1>
  <button onclick="startSite()">Open My Heart</button>
</div>

<div id="bgHearts"></div>

<!-- MAIN CONTENT -->
<div id="content" style="display:none">

<section>
  <h1>I am Sorry.</h1>
  <div class="textBox">
    <p>Vaishnavi,</p>
    <p>Main bina kisi excuse ke apni galti maanta hoon.</p>
    <p>Agar meri wajah se tumhe dard hua, toh main dil se sorry hoon.</p>
    <p><b>Please mujhe maaf kar do.</b></p>
  </div>
</section>

<section>
  <h2>⏳ Countdown</h2>
  <div class="timer">
    <div><span id="days">00</span><br>Days</div>
    <div><span id="hours">00</span><br>Hrs</div>
    <div><span id="minutes">00</span><br>Min</div>
    <div><span id="seconds">00</span><br>Sec</div>
  </div>
</section>

<section>
  <h2>💬 One Conversation</h2>
  <div class="chat" id="chatBox"></div>
</section>

<section>
  <h2>💌 My Confession</h2>
  <div class="textBox">
    <p>Tum meri safe place ho.</p>
    <p>Main perfect nahi hoon, par mera pyaar real hai.</p>
    <p><b>Agar ek chance ho sake, toh please mujhe de do.</b></p>
  </div>
</section>

<section>
  <h2>🌹 For You</h2>
  <div class="poetry">
    Only you can make me whole ❤️
    <span class="signature">— urs Devulla 💌</span>
  </div>
</section>

<section>
  <h2>🏺 Promise Jar</h2>
  <div class="jar" onclick="openPromise()">🏺</div>
</section>

<a id="waBtn" href="https://wa.me/919369068575">Reply 💬</a>

</div>

<!-- PROMISE MODAL -->
<div id="modal" onclick="closeModal()">
  <div class="modalBox" onclick="event.stopPropagation()">
    <div class="modalText" id="promiseText"></div>
    <button onclick="closeModal()">Keep ❤️</button>
  </div>
</div>

<script>
/* ===== SAFE ELEMENTS ===== */
const lockScreen=document.getElementById("lockScreen");
const startScreen=document.getElementById("startScreen");
const content=document.getElementById("content");
const chatBox=document.getElementById("chatBox");

/* ===== PASSWORD ===== */
function unlock(){
  const val=document.getElementById("passwordInput").value.trim();
  if(val==="vaishnavi"){
    lockScreen.style.display="none";
    startScreen.style.display="flex";
  }else{
    document.getElementById("error").innerText="Wrong password 💔";
  }
}

/* ===== START ===== */
function startSite(){
  startScreen.style.display="none";
  content.style.display="block";
  reveal();
  startChat();
}

/* ===== SECTIONS REVEAL ===== */
function reveal(){
  document.querySelectorAll("section").forEach(s=>s.classList.add("show"));
}

/* ===== HEARTS ===== */
for(let i=0;i<20;i++){
  const h=document.createElement("div");
  h.className="heart";
  h.innerText="❤️";
  h.style.left=Math.random()*100+"vw";
  h.style.fontSize=(10+Math.random()*20)+"px";
  h.style.animationDuration=(8+Math.random()*6)+"s";
  document.getElementById("bgHearts").appendChild(h);
}

/* ===== TIMER ===== */
const target=new Date(2025,7,2,0,0,0).getTime();
setInterval(()=>{
  let d=target-Date.now(); if(d<0)d=0;
  days.innerText=Math.floor(d/86400000);
  hours.innerText=Math.floor(d/3600000)%24;
  minutes.innerText=Math.floor(d/60000)%60;
  seconds.innerText=Math.floor(d/1000)%60;
},1000);

/* ===== CHAT ===== */
const msgs=["Vaishnavi...","I know you are upset.","Please read this once.","I made this for you ❤️"];
let mi=0;
function startChat(){
  function next(){
    if(mi<msgs.length){
      const m=document.createElement("div");
      m.className="msg";
      m.innerText=msgs[mi++];
      chatBox.appendChild(m);
      chatBox.scrollTop=chatBox.scrollHeight;
      setTimeout(next,1800);
    }else{
      document.getElementById("waBtn").style.display="block";
    }
  }
  next();
}

/* ===== PROMISE JAR ===== */
const promises=[
  "I promise to listen more.",
  "I promise to respect your feelings.",
  "I promise to control my anger.",
  "I promise to never take you for granted.",
  "I promise to love you always."
];
let pIndex=0;
function openPromise(){
  if(pIndex>=promises.length)pIndex=0;
  document.getElementById("promiseText").innerText="✨ "+promises[pIndex++];
  document.getElementById("modal").style.display="flex";
}
function closeModal(){
  document.getElementById("modal").style.display="none";
}
</script>

</body>
</html>
