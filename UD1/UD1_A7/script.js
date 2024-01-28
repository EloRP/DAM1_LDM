var canvas = document.getElementById("myCanvas");
var ctx = canvas.getContext("2d");
var ballRadius = 10;
var maxBallRadius = canvas.height / 2 + 100;
var x = canvas.width / 2;
var y = canvas.height - 30;
var dx = 2;
var dy = -2;
var justBounced = false;
var numRebotes = 0;
var isClickEnabled = true;
var gameOver = false;

function drawBall() {
    ctx.beginPath();
    ctx.arc(x, y, ballRadius, 0, Math.PI * 2);
    
	
    if (justBounced && ballRadius * 2 <= canvas.height && ballRadius < maxBallRadius) {
        ctx.fillStyle = getRandomColor();
    } else {
        ctx.fillStyle = ""; // Sin color
    }
    
    ctx.fill();
    ctx.closePath();
}

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

canvas.addEventListener("click", function (event) {

    if (isClickEnabled && ballRadius < maxBallRadius && !gameOver) {
        var mouseX = event.clientX - canvas.getBoundingClientRect().left;
        var mouseY = event.clientY - canvas.getBoundingClientRect().top;

        if (Math.sqrt((mouseX - x) ** 2 + (mouseY - y) ** 2) <= ballRadius) {
            dx = -dx;
            justBounced = true;
            numRebotes++;
            updateRebotesCounter();
            isClickEnabled = false;
            sleep(30).then(() => {
                isClickEnabled = true;
            });
        }
    }
});

function handleWallCollision() {
    justBounced = true;
    if (ballRadius < maxBallRadius) {
        ballRadius += 2;
    } else {
        gameOver = true;
        document.getElementById("gameOverMessage").innerText = "Game Over";
    }
    isClickEnabled = false;
    sleep(30);
    isClickEnabled = true;
}

function draw() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    drawBall();

    if (!gameOver) {
        if (x + dx > canvas.width - ballRadius || x + dx < ballRadius) {
            dx = -dx;
            handleWallCollision();
        } else if (y + dy > canvas.height - ballRadius || y + dy < ballRadius) {
            dy = -dy;
            handleWallCollision();
        } else {
            justBounced = false;
        }

        x += dx;
        y += dy;
    }
}

function getRandomColor() {
    var letters = '0123456789ABCDEF';
    var color = '#';
    for (var i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}

function updateRebotesCounter() {
    document.getElementById("numRebotes").innerText = numRebotes;
}

setInterval(draw, 10);
