--Asteroid shooting game by Madhurya Hait
--Inititalizing the frame--------------------
VIRTUAL_WIDTH=1200
VIRTUAL_HEIGHT=700
local imageFile
local frames={}
local activeFrame
local currentFrame=1
---------------------------------------------
--initializing Asteroid 1
local imageFile2
local fr={}
local activefr
local currentFr=1
---------------------------------------------
--initializing Asteroid 2
local imagFile2
local f={}
local activef
local currentF=1
---------------------------------------------
-- loads the graphics needed in the game
function love.load()
  imageFile =love.graphics.newImage('png/launch.png')
  frames[1]=love.graphics.newQuad(0,0 , 512,512, imageFile:getDimensions())
  frames[2]=love.graphics.newQuad(512,0 , 512,512,imageFile:getDimensions())
  frames[3]=love.graphics.newQuad(1024,0 , 512,512,imageFile:getDimensions())
  frames[4]=love.graphics.newQuad(1536,0 , 512,512,imageFile:getDimensions())
  frames[5]=love.graphics.newQuad(2048,0 , 512,512,imageFile:getDimensions())
  frames[6]=love.graphics.newQuad(2560,0 , 512,512,imageFile:getDimensions())

  activeFrame = frames[currentFrame]
  --------------------------------------------
  --getting frames 
  imageFile2=love.graphics.newImage('png/ast1.png')
  fr[1]=love.graphics.newQuad(0,0 , 128,128, imageFile2:getDimensions())
  fr[2]=love.graphics.newQuad(128,0 , 128,128,imageFile2:getDimensions())
  fr[3]=love.graphics.newQuad(256,0 , 128,128,imageFile2:getDimensions())
  fr[4]=love.graphics.newQuad(384,0 , 128,128,imageFile2:getDimensions())
  fr[5]=love.graphics.newQuad(512,0 , 128,128,imageFile2:getDimensions())
  fr[6]=love.graphics.newQuad(640,0 , 128,128,imageFile2:getDimensions())
  fr[7]=love.graphics.newQuad(768,0 , 128,128, imageFile2:getDimensions())
  fr[8]=love.graphics.newQuad(896,0 , 128,128,imageFile2:getDimensions())
  fr[9]=love.graphics.newQuad(0,128 ,128,128,imageFile2:getDimensions())
  fr[10]=love.graphics.newQuad(128,128 , 128,128,imageFile2:getDimensions())
  fr[11]=love.graphics.newQuad(256,128 ,128,128,imageFile2:getDimensions())
  fr[12]=love.graphics.newQuad(384,128 , 128,128,imageFile2:getDimensions())
  fr[13]=love.graphics.newQuad(512,128 , 128,128, imageFile2:getDimensions())
  fr[14]=love.graphics.newQuad(640,128 , 128,128,imageFile2:getDimensions())
  fr[15]=love.graphics.newQuad(768,128 , 128,128,imageFile2:getDimensions())
  fr[16]=love.graphics.newQuad(896,128 , 128,128,imageFile2:getDimensions())
  fr[17]=love.graphics.newQuad(0,256 , 128,128,imageFile2:getDimensions())
  fr[18]=love.graphics.newQuad(128,256 , 128,128,imageFile2:getDimensions())
  fr[19]=love.graphics.newQuad(256,256 , 128,128,imageFile2:getDimensions())
  fr[20]=love.graphics.newQuad(384,256 , 128,128,imageFile2:getDimensions())
  fr[21]=love.graphics.newQuad(512,256 , 128,128,imageFile2:getDimensions())
  fr[22]=love.graphics.newQuad(640,256 , 128,128,imageFile2:getDimensions())
  fr[23]=love.graphics.newQuad(768,256 , 128,128,imageFile2:getDimensions())
  fr[24]=love.graphics.newQuad(896,256 , 128,128,imageFile2:getDimensions())
  fr[25]=love.graphics.newQuad(0,384 , 128,128,imageFile2:getDimensions())
  fr[26]=love.graphics.newQuad(128,384 , 128,128,imageFile2:getDimensions())
  fr[27]=love.graphics.newQuad(256,384 , 128,128,imageFile2:getDimensions())
  fr[28]=love.graphics.newQuad(384,384 , 128,128,imageFile2:getDimensions())
  fr[29]=love.graphics.newQuad(512,384 , 128,128,imageFile2:getDimensions())
  fr[30]=love.graphics.newQuad(640,384 , 128,128,imageFile2:getDimensions())
  fr[31]=love.graphics.newQuad(768,384 , 128,128,imageFile2:getDimensions())
  fr[32]=love.graphics.newQuad(896,384 , 128,128,imageFile2:getDimensions())
  fr[33]=love.graphics.newQuad(0,512 , 128,128,imageFile2:getDimensions())
  fr[34]=love.graphics.newQuad(128,512 , 128,128,imageFile2:getDimensions())
  fr[35]=love.graphics.newQuad(256,512 , 128,128,imageFile2:getDimensions())
  fr[36]=love.graphics.newQuad(384,512 , 128,128,imageFile2:getDimensions())
  fr[37]=love.graphics.newQuad(512,512 , 128,128,imageFile2:getDimensions())
  fr[38]=love.graphics.newQuad(640,512 , 128,128,imageFile2:getDimensions())
  fr[39]=love.graphics.newQuad(768,512 , 128,128,imageFile2:getDimensions())
  fr[40]=love.graphics.newQuad(896,512 , 128,128,imageFile2:getDimensions())
  fr[41]=love.graphics.newQuad(0,640 , 128,128,imageFile2:getDimensions())
  fr[42]=love.graphics.newQuad(128,640 , 128,128,imageFile2:getDimensions())
  fr[43]=love.graphics.newQuad(256,640 , 128,128,imageFile2:getDimensions())
  fr[44]=love.graphics.newQuad(384,640 , 128,128,imageFile2:getDimensions())
  fr[45]=love.graphics.newQuad(512,640 , 128,128,imageFile2:getDimensions())
  fr[46]=love.graphics.newQuad(640,640 , 128,128,imageFile2:getDimensions())
  fr[47]=love.graphics.newQuad(768,640 , 128,128,imageFile2:getDimensions())
  fr[48]=love.graphics.newQuad(896,640 , 128,128,imageFile2:getDimensions())
  fr[49]=love.graphics.newQuad(0,768 , 128,128,imageFile2:getDimensions())
  fr[50]=love.graphics.newQuad(128,768 , 128,128,imageFile2:getDimensions())
  fr[51]=love.graphics.newQuad(256,768 , 128,128,imageFile2:getDimensions())
  fr[52]=love.graphics.newQuad(384,768 , 128,128,imageFile2:getDimensions())
  fr[53]=love.graphics.newQuad(512,768 , 128,128,imageFile2:getDimensions())
  fr[54]=love.graphics.newQuad(640,768 , 128,128,imageFile2:getDimensions())
  fr[55]=love.graphics.newQuad(768,768 , 128,128,imageFile2:getDimensions())
  fr[56]=love.graphics.newQuad(896,768 , 128,128,imageFile2:getDimensions())
  fr[57]=love.graphics.newQuad(0,896, 128,128,imageFile2:getDimensions())
  fr[58]=love.graphics.newQuad(128,896 , 128,128,imageFile2:getDimensions())
  fr[59]=love.graphics.newQuad(256,896 , 128,128,imageFile2:getDimensions())
  fr[60]=love.graphics.newQuad(384,896 , 128,128,imageFile2:getDimensions())
  fr[61]=love.graphics.newQuad(512,896 , 128,128,imageFile2:getDimensions())
  fr[62]=love.graphics.newQuad(640,896 , 128,128,imageFile2:getDimensions())
  fr[63]=love.graphics.newQuad(768,896 , 128,128,imageFile2:getDimensions())
  fr[64]=love.graphics.newQuad(896,896 , 128,128,imageFile2:getDimensions())



  activefr =fr[currentFr]
---------------------------------------------
  imagFile2=love.graphics.newImage('png/ast2.png')

  f[1]=love.graphics.newQuad(0,0 , 128,128, imagFile2:getDimensions())
  f[2]=love.graphics.newQuad(128,0 , 128,128,imagFile2:getDimensions())
  f[3]=love.graphics.newQuad(256,0 , 128,128,imagFile2:getDimensions())
  f[4]=love.graphics.newQuad(384,0 , 128,128,imagFile2:getDimensions())
  f[5]=love.graphics.newQuad(512,0 , 128,128,imagFile2:getDimensions())
  f[6]=love.graphics.newQuad(0,128 , 128,128, imagFile2:getDimensions())
  f[7]=love.graphics.newQuad(128,128 , 128,128, imagFile2:getDimensions())
  f[8]=love.graphics.newQuad(256,128 , 128,128, imagFile2:getDimensions())
  f[9]=love.graphics.newQuad(384,128 , 128,128, imagFile2:getDimensions())
  f[10]=love.graphics.newQuad(512,128 , 128,128, imagFile2:getDimensions())
  f[11]=love.graphics.newQuad(0,0 , 256,128,imagFile2:getDimensions())
  f[12]=love.graphics.newQuad(128,256 , 128,128, imagFile2:getDimensions())
  f[13]=love.graphics.newQuad(256,256 , 128,128,imagFile2:getDimensions())
  f[14]=love.graphics.newQuad(384,256 , 128,128, imagFile2:getDimensions())
  f[15]=love.graphics.newQuad(512,256 , 128,128, imagFile2:getDimensions())
  f[16]=love.graphics.newQuad(0,384 , 128,128, imagFile2:getDimensions())
  f[17]=love.graphics.newQuad(128,384 , 128,128, imagFile2:getDimensions())
  f[18]=love.graphics.newQuad(256,384 , 128,128, imagFile2:getDimensions())
  f[19]=love.graphics.newQuad(384,384 , 128,128, imagFile2:getDimensions())
  f[20]=love.graphics.newQuad(512,384 , 128,128, imagFile2:getDimensions())
  activef=f[currentF]
---------------------------------------------
--initializing sounds

  sounds = {
        ['gamesound'] = love.audio.newSource('png/gamesound.mp3', 'static'),
        ['explode'] = love.audio.newSource('png/explode.mp3', 'static'),
        ['bullet'] = love.audio.newSource('png/Bullet.mp3', 'static'),
        ['rocket']=love.audio.newSource('png/rocket.mp3','static')

            }
  --initializing variables

  collision='false'
  s=1
  playerScore=0
  beep='false'
  time2=0
  time=0
  ast3X=0
  ast3Y=math.random(30, VIRTUAL_HEIGHT-40)
  ast2X=0
  ast2Y=math.random(30, VIRTUAL_HEIGHT-40)
  ast1X=-180
  ast1Y=math.random(30, VIRTUAL_HEIGHT-40)
  playerX=VIRTUAL_WIDTH/2
  ballX=-200
  playerY=VIRTUAL_HEIGHT/2
  ballDY=490
  ballY=playerY
  throw='no'
  angle=0
  fnt=love.graphics.newFont(25)
  speed=260
  love.window.setMode(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, {
      fullscreen = false,
      resizable = false,
      vsync = true
        })

  image = love.graphics.newImage( 'png/no1.png' )
  background=love.graphics.newImage('png/bg.jfif')
  spacship1=love.graphics.newImage('png/alien1.png')
  spacship2=love.graphics.newImage('png/alien2.png')
  sun=love.graphics.newImage('png/galaxy.png')
  k=0
end
---------------------------------------------
--start of game
function love.update(dt)
  sounds['gamesound']:play()

  angle=0
  if distanceBetween(playerX,playerY,ast1X,ast1Y) < 50 then
      collision='true'
      playerScore=playerScore-5
      collisionX=ast1X
      collisionY=ast1Y
      ast1X=0
      ast1Y=math.random(20, VIRTUAL_HEIGHT-30)
  end
  if distanceBetween(playerX,playerY,ast2X,ast2Y) < 50 then
      collision='true'
      playerScore=playerScore-5
      collisionX=ast2X
      collisionY=ast2Y
      ast2X=0
      ast2Y=math.random(20, VIRTUAL_HEIGHT-30)
  end
  if distanceBetween(playerX,playerY,ast3X,ast3Y) < 50 then
      collision='true'
      playerScore=playerScore-5
      collisionX=ast3X
      collisionY=ast3Y
      ast3X=0
      ast3Y=math.random(20, VIRTUAL_HEIGHT-30)
  end
  if distanceBetween(ballX,ballY,ast1X,ast1Y) < 50 then
      collision='true'
      playerScore=playerScore+10
      collisionX=ast1X
      collisionY=ast1Y
      ast1X=0
      ast1Y=math.random(20, VIRTUAL_HEIGHT-30)
  end
  if distanceBetween(ballX,ballY,ast3X,ast3Y) < 50 then
      collision='true'
      playerScore=playerScore+10
      collisionX=ast3X
      collisionY=ast3Y
      ast3X=0
      ast3Y=math.random(20, VIRTUAL_HEIGHT-30)
  end
  if distanceBetween(ballX,ballY,ast2X,ast2Y) <50 then
    collision='true'
    playerScore=playerScore+10
    collisionX=ast2X
    collisionY=ast2Y
    ast2X=0
    ast2Y=math.random(20, VIRTUAL_WIDTH-30)
  end

  if distanceBetween(1100,350,ast1X,ast1Y) <200 then
  playerScore=playerScore-5
  collision='true'
  collisionX=ast1X
  collisionY=ast1Y
  ast1X=0
  ast1Y=math.random(20, VIRTUAL_HEIGHT-30)
  end
  if distanceBetween(1100,350,ast2X,ast2Y) <200 then
  playerScore=playerScore-5
  collision='true'
  collisionX=ast2X
  collisionY=ast2Y
  ast2X=0
  ast2Y=math.random(20, VIRTUAL_HEIGHT-30)
  end
  if distanceBetween(1100,350,ast3X,ast3Y) <200 then
  playerScore=playerScore-5
  collision='true'
  collisionX=ast3X
  collisionY=ast3Y
  ast3X=0
  ast3Y=math.random(20, VIRTUAL_HEIGHT-30)
  end
  k=k+0.01
  --------------flame-----------------------
  flame1 ='undo'
  flame2='undo'
  flame3='undo'
  flame4='undo'

  if love.keyboard.isDown('down') then
    if playerY+70 < VIRTUAL_HEIGHT then
      playerY = playerY + speed * dt
      flame1='undo'
      flame2='undo'
      flame3='do'
      flame4='do'
      sounds['rocket']:play()

    end

  elseif love.keyboard.isDown('up') then
    if playerY-50 > 0 then
      playerY = playerY - speed * dt
      flame1='do'
      flame3='undo'
      flame4='undo'
      flame2='do'
      sounds['rocket']:play()
    end


  elseif love.keyboard.isDown('left') then
    if playerX-60 > 0 then
      playerX = playerX - speed * dt
      flame1='undo'
      flame2='do'
      flame3='do'
      flame4='undo'
      angle='-0.1'
      sounds['rocket']:play()

    end


  elseif love.keyboard.isDown('right') then
    if playerX+60 < VIRTUAL_WIDTH then
    playerX = playerX + speed * dt
    flame1='do'
    flame2='undo'
    flame3='undo'
    flame4='do'
    angle=0.1
    sounds['rocket']:play()
    end
  else
     sounds['rocket']:stop()

  end
---------------------------------------------
  --shooting---------------

  if ballY>-30 and throw=='yes'then

    ballY=ballY-ballDY*dt
  else
    throw='no'
    ballreset()
  end
---------------------------------------------
  ballset='no'
  if ballX == playerX then
    if love.keyboard.isDown('space') then

      sounds['bullet']:play()
      

      throw='yes'
      ballX=playerX
    end
  end
  time=time+0.5

---------------------------------------------

  if currentF<20 then
    if s < time then
      currentF=currentF+1
      s=s+1
    end
  else
    currentF=1
  end

  activef=f[currentF]
---------------------------------------------
  if currentFr<64 then
    currentFr=currentFr+1
  else
    currentFr=1
  end
  activefr=fr[currentFr]
---frames of shooting------------------------

  if currentFrame<6 then
    currentFrame=currentFrame+1
  else
    currentFrame=1
  end
  activeFrame=frames[currentFrame]
  ast1X=ast1X+80*dt
  ast2X=ast2X+100*dt
  ast3X=ast3X+160*dt
  if ast1X >VIRTUAL_WIDTH then
    y=math.random(10,VIRTUAL_HEIGHT-10)
    ast1Y=y
    ast1X=0
  end
  if ast2X> VIRTUAL_WIDTH then
    ast2Y=math.random(10, VIRTUAL_HEIGHT-10)
    ast2X=0

  end
  if collision=='true' then
    time2=time2+0.1
    sounds['explode']:play()
    if time2>5 then
      collision='false'

      time2=0
    end

  end

end
---------------------------------------------
function love.keypressed(key)
  if key=='escape' then
    love.event.quit()
  end
end
---------------------------------------------

function love.draw()

  for x=0 , VIRTUAL_WIDTH, background:getWidth() do
    for y=0,VIRTUAL_HEIGHT,background:getHeight()do
      love.graphics.setColor(1,1,1)
      love.graphics.draw(background,x,y)
    end
  end
  love.graphics.setColor(1,1,1, alpha)
  love.graphics.draw(sun, -130,200,k,0.39,0.39,1858/2-30,1689/2+20)
  love.graphics.draw(spacship1,1100 ,350,0,0.78,0.9,512/2,512/2+60)
  love.graphics.setColor(1,1,1)
  love.graphics.draw(imageFile2, activefr,ast3X, ast3Y, 0, 0.5,0.5,128/2,128/2)
  love.graphics.draw(imageFile2, activefr,ast2X, ast2Y, 0, 0.5,0.5,128/2,128/2)
  love.graphics.draw(imageFile2,activefr, ast1X,ast1Y, 0, 0.5, 0.5,128/2,128/2)
  love.graphics.draw(imageFile,activeFrame,ballX-6, ballY+15,4.71,0.1,0.08,45,370/2)
  if flame1 == 'do' then
    love.graphics.draw(imageFile,activeFrame,playerX-34, playerY+114,4.71,0.2,0.053,45,370/2)
  end
  if flame2 =='do'then
    love.graphics.draw(imageFile,activeFrame,playerX+28, playerY+114,4.71,0.2,0.053,45,370/2)
  end
  if flame3=='do'then
    love.graphics.draw(imageFile,activeFrame,playerX-34, playerY+84,4.71,0.1,0.03,45,370/2)
  end
  if flame4=='do'then
    love.graphics.draw(imageFile,activeFrame,playerX+28, playerY+84,4.71,0.1,0.03,45,370/2)
  end
  love.graphics.setColor(1, 1,1)
  love.graphics.draw(image, playerX, playerY,angle,0.16,0.16,720/2,713/2)
  if collision=='true'then

    love.graphics.draw(imagFile2,activef,collisionX , collisionY, 0, 1, 1,128/2,128/2)
  end
  love.graphics.setFont(fnt)
  love.graphics.setColor(0, 1, 0, alpha)
  love.graphics.print('Score =',20,VIRTUAL_HEIGHT-80)
  love.graphics.print(playerScore,150,VIRTUAL_HEIGHT-80)
end
--resets bullet after everyshoot
function ballreset()
  ballY=playerY
  ballX=playerX
end
--calculates the realtime distace 
function distanceBetween(x1 , y1, x2 , y2)
  return ((y2-y1)^2 + (x2-x1)^2)^0.5
end

