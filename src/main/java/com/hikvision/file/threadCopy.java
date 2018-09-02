package com.hikvision.file;

public class threadCopy {
    
    
    public static void main (String args[]){
        
        ThreadCopyFile a=new ThreadCopyFile(1);   
        ThreadCopyFile b=new ThreadCopyFile(2);
        ThreadCopyFile c=new ThreadCopyFile(3);
        Thread down1 = new Thread(a);
        down1.start();            
        Thread down2 = new Thread(b);
        down2.start();           
        Thread down3 = new Thread(c);
        down3.start();
            
    }
    
}