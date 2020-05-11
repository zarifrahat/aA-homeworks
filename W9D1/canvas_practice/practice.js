document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById('mycanvas');
    canvas.width = 500;
    canvas.height = 500;
    const ctx = canvas.getContext('2d');
    ctx.fillStyle = "teal";
    ctx.fillRect(0, 0, 500, 500);
    ctx.beginPath();
    // ctx.arc(250, 250, 250, 0, 2 * Math.PI);
    ctx.arc(250, 250, 200, 0, 2 * Math.PI);
    ctx.arc(250, 250, 150, 0, 2 * Math.PI);
    ctx.arc(250, 250, 100, 0, 2 * Math.PI);
    ctx.arc(250, 250, 50, 0, 2 * Math.PI);
    ctx.arc(250, 250, 25, 0, 2 * Math.PI);


    ctx.strokeStyle = "gold";
    ctx.lineWidth = 10;
    ctx.stroke();
    ctx.fillStyle = "gold";
    ctx.fill();

});
