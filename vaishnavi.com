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
  --glass:rgba(255,255,255,.95);
}

*{box-sizing:border-box}

body{
  margin:0;
  font-family:Poppins,sans-serif;
  background:linear-gradient(135deg,#fff0f3,#ffe6e9);
  color:#444;
}

/* PASSWORD */
#lock{
  position:fixed; inset:0;
  background:#000;
  display:flex;
  flex-direction:column;
  justify-content:center;
  align-items:center;
  color:white;
  z-index:10000;
}
#lock input{
  padding:12px 20px;
  border-radius:25px;
  border:none;
  margin:15px 0;
}

/* START */
#start{
  position:fixed; inset:0;
  background:#000;
  display:none;
  flex-direction:column;
  justify-content:center;
  align-items:center;
  color:white;
  z-index:9000;
}

/* SECTIONS */
section{
  max-width:650px;
  margin:35px auto;
  padding:30px;
  background:var(--glass);
  border-radius:20px;
  box-shadow:0 10px 25px rgba(0,0,0,.08);
}

h1,h2{
  font-family:Playfair Display,serif;
  color:var(--primary);
  text-align:center;
}

.box{
  background:#fff;
  padding:20px;
  border-radius:15px;
  border-left:5px solid var(--primary);
}

/* TIMER */
.timer{
  display:flex;
  justify-content:space-around;
  text-align:center;
}
.timer span{
  font-size:1.5rem;
  font-weight:700;
  color:var(--primary);
}

/* CHAT */
.chat{
  background:#efe7dd;
  height:260px;
  overflow-y:auto;
  padding:15px;
  border-radius:15px;
}
.msg{
  background:#dcf8c6;
  padding:10px 14px;
  border-radius:15px;
  margin:8px 0;
  max-width:80%;
}

/* POETRY */
.poetry{
  font-family:Dancing Script,cursive;
  font-size:1.6rem;
  color:#880e4f;
  text-align:center;
}
.signature{
  margin-top:15px;
  font-size:1.8rem;
  color:#c2185b;
}

/* PROMISE */
.jar{
  font-size:80px;
  text-align:center;
  cursor:pointer;
}

/* MODAL */
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

/* GALLERY */
.gallery{
  display:flex;
  gap:10px;
  justify-content:center;
}
.gallery img{
  width:45%;
  border-radius:10px;
}

/* COUPON */
.coupon{
  border:2px dashed var(--primary);
  padding:20px;
  border-radius:15px;
  text-align:center;
  display:none;
}

/* WHATSAPP */
#wa{
  position:fixed;
  bottom:20px;
  right:20px;
  background:#25d366;
  color:white;
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
<div id="lock">
  <h2>Only for Vaishnavi 💖</h2>
  <input id="pass" type="password" placeholder="Password">
  <button onclick="unlock()">Enter</button>
  <p id="err" style="color:red"></p>
</div>

<!-- START -->
<div id="start">
  <h1>For My Vaishnavi ❤️</h1>
  <button onclick="openSite()">Open My Heart</button>
</div>

<div id="main" style="display:none">

<!-- APOLOGY -->
<section>
<h1>I am Sorry</h1>
<div class="box">
<p>Vaishnavi,</p>
<p>Main bina excuse ke apni galti maanta hoon.</p>
<p>Meri wajah se agar tumhe dard hua, toh main dil se sorry hoon.</p>
<p><b>Please mujhe maaf kar do.</b></p>
</div>
</section>

<!-- TIMER -->
<section>
<h2>⏳ Countdown</h2>
<div class="timer">
<div><span id="d">00</span><br>Days</div>
<div><span id="h">00</span><br>Hrs</div>
<div><span id="m">00</span><br>Min</div>
<div><span id="s">00</span><br>Sec</div>
</div>
</section>

<!-- CHAT -->
<section>
<h2>💬 One Conversation</h2>
<div class="chat" id="chat"></div>
</section>

<!-- CONFESSION -->
<section>
<h2>💌 My Confession</h2>
<div class="box">
<p>Tum meri safe place ho.</p>
<p>Main perfect nahi hoon, par mera pyaar real hai.</p>
<p><b>Agar ek chance ho sake, toh please mujhe de do.</b></p>
</div>
</section>

<!-- POETRY -->
<section>
<h2>🌹 For You</h2>
<div class="poetry">
Only you can make me whole ❤️
<div class="signature">— urs Devulla 💌</div>
</div>
</section>

<!-- PROMISE -->
<section>
<h2>🏺 Promise Jar</h2>
<div class="jar" onclick="promise()">🏺</div>
</section>

<!-- COUPON -->
<section>
<h2>🎁 Love Coupon</h2>
<button onclick="showCoupon()">Reveal</button>
<div class="coupon" id="coupon">
🫂 Unlimited Hugs<br>
🥟 Unlimited Momos<br>
💬 Lifetime Communication
</div>
</section>

<!-- PHOTOS -->
<section>
<h2>📸 Memories</h2>
<div class="gallery">
<img src="https://i.ibb.co/WvZCqXrJ/f050c675-8b43-4e06-be87-a6d71669c771-d146cfb7-252f-48cb-ba3c-9da826f0f173-2.jpg">
<img src="https://i.ibb.co/xbLT1BP/Screenshot-20251227-063846-Photos.jpg">
</div>
</section>

</div>

<a id="wa" href="https://wa.me/919369068575">Reply 💬</a>

<!-- PROMISE MODAL -->
<div id="modal" onclick="closeModal()">
  <div class="modalBox" onclick="event.stopPropagation()">
    <div class="modalText" id="ptext"></div>
    <button onclick="closeModal()">Keep ❤️</button>
  </div>
</div>

<script>
/* PASSWORD */
function unlock(){
  if(pass.value==="vaishnavi"){
    lock.style.display="none";
    start.style.display="flex";
  }else err.innerText="Wrong password";
}

/* START */
function openSite(){
  start.style.display="none";
  main.style.display="block";
  startChat();
}

/* TIMER */
const target=new Date(2025,7,2).getTime();
setInterval(()=>{
  let diff=target-Date.now(); if(diff<0)diff=0;
  d.innerText=Math.floor(diff/86400000);
  h.innerText=Math.floor(diff/3600000)%24;
  m.innerText=Math.floor(diff/60000)%60;
  s.innerText=Math.floor(diff/1000)%60;
},1000);

/* CHAT */
const msgs=["Vaishnavi...","I know you are upset.","Please read this once.","I made this for you ❤️"];
let i=0;
function startChat(){
  if(i<msgs.length){
    let div=document.createElement("div");
    div.className="msg";
    div.innerText=msgs[i++];
    chat.appendChild(div);
    setTimeout(startChat,1800);
  }else wa.style.display="block";
}

/* PROMISE */
const promises=[
"I promise to listen more.",
"I promise to respect your feelings.",
"I promise to control my anger.",
"I promise to never take you for granted.",
"I promise to love you always."
];
let pi=0;
function promise(){
  ptext.innerText="✨ "+promises[pi++];
  if(pi>=promises.length)pi=0;
  modal.style.display="flex";
}
function closeModal(){modal.style.display="none"}

/* COUPON */
function showCoupon(){coupon.style.display="block"}
</script>

</body>
</html>
