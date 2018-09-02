package com.hikvision.file;


import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;


public class ThreadCopyFile extends Thread{

    int i;   
    
    ThreadCopyFile(int i)
    {
        this.i=i;
    }
    

 public void run() {
      
          System.out.println("线程"+i+"运行中。。。");
    
          File ofile=new File("e:/java乱码处理.txt");    
          File nfile=new File("e:/456.txt");    //定义目的路径以及文件名
            
            try {
                
                RandomAccessFile in=new RandomAccessFile(ofile,"rw"); 
                            
                long length=in.length()/3;
                
                RandomAccessFile out=new RandomAccessFile(nfile,"rw");
                int count=0;
                int len=0;
                byte[] b= new byte[2048];
                in.seek(length*(i-1));    //设置读文件偏移位置
                out.seek(length*(i-1)); //设置写文件偏移位置
                while(((len=in.read(b))!=-1)&&(count<=(int)length)){    //读取文件内容设置写文件停止条件
                    
                        out.write(b, 0, len);    
                        count=count+len;
                        
                    }//写出文件内容
                        
            } catch (IOException e) {
                
                e.printStackTrace();
            }
            
            System.out.println("线程"+i+"复制完成！");
        }
  
    }