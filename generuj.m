function[] =generuj(delka,maximum,vystup)
A=randi(maximum+1,delka,1)-1;%generace náhodného vektoru èísel
save(vystup,'A');
end