function[] =generuj(delka,maximum,vystup)
A=randi(maximum+1,delka,1)-1;%generace n�hodn�ho vektoru ��sel
save(vystup,'A');
end