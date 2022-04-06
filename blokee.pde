//Blokee vs. Blokus
//https://blokee.mattle.online/lobby/forum/topic/Z2bJJGnhgLqLRxKMm/blokus-game-rules
//https://zh.wikipedia.org/wiki/角鬥士棋
//21 pieces: 1,2,3,3v,4I,4L,4Z,4O,4T,F,I,L,N,P,T,U,V,W,X,Y,Z
//Q:如何旋轉？
//https://www.facebook.com/groups/ViewSonicClassroomTaiwan/posts/1667693336918418/
//三師爸 (但文章好像刪掉了）
//https://www.facebook.com/三師爸Sense-Bar-108066560626981


color c[]={#47B454, #D0F5D4, #E8F5EA};
void setup(){
  size(524,500);
}
void draw(){
  background(c[2]);
  for(int i=0; i<table.length;i++){
    for(int j=0; j<table[i].length;j++){
      if(table[i][j]==1) cubeOne(i,j);
    }
  }
}
char [][] table = { //16x17
  {1,1,1,1,0,1,1,1,1,0,0,1,1,1,1,0,0},
  {0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0},
  {1,0,0,1,1,0,1,0,0,0,1,1,0,0,0,1,0},
  {1,0,0,1,1,0,1,0,0,0,0,1,0,0,1,1,1},
  {1,1,0,1,0,0,1,1,1,0,0,1,1,0,0,1,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {1,0,0,1,1,0,1,0,0,0,1,1,1,0,1,1,0},
  {1,1,0,1,0,0,1,1,0,0,0,1,0,0,0,1,1},
  {1,0,0,1,1,0,0,1,1,0,0,1,0,0,0,1,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {1,1,1,0,0,1,1,0,0,1,0,0,1,1,0,1,0},
  {0,0,1,1,0,0,1,1,0,1,1,0,1,1,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {1,1,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0},
};
void cubeOne(int i, int j){
  int dx=8,dy=dx,w=30,L2=w/8,L=w-L2-L2;
  fill(c[0]);
  noStroke();
  rect(dx+j*w,dy+i*w,w,w);
  fill(c[1]);
  rect(dx+j*w+L2,dy+i*w+L2,L,L2);
  rect(dx+j*w+L2,dy+i*w+L2,L2,L);
}
