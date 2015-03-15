module Main where

main=do
	x<-getInt
	mapM (print.(+1)) [mod m 12|m<-[2..13], wod x m==6]

getInt::IO Int
getInt=readLn

wod::Integral a=>a->a->a
wod y m=mod (6+div ((m+2)*26) 10+mod y 100+div (mod y 100) 4+div (div y 100) 4-2*div y 100) 7
