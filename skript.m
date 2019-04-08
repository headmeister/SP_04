%% generovani dat a modulace sign�lu
generuj(195201,31,'data.mat');
load('data.mat');
%A(1:195201)=7;
modulovany=map(A);
demodulovany(1:length(A),1:3)=0;
error(1:3)=0;
%% �et�zec p�enosu
for(i=1:3)%% t�i pokusy s r�znou �rovn� �umu
zas_modulovany=zasum(modulovany,0.3*i-0.3);
demodulovany(:,i)=demap(zas_modulovany);
error(i)=chyba(A,demodulovany(:,i));
disp(['Pr�m�rn� absolutn� chyba p�epo�ten� na bity p�i �umu sigma=',num2str(0.3*i-0.3),' je ', num2str(error(i)), '.'] );
end

%% zobrazeni
subplot(311);
plot((A-demodulovany(:,1))./32*5);
title('V�voj chyby v �ase, aditivn� �um sigma=0.');
ylabel('Chyba p�epo�ten� na bity.');
subplot(312)
plot((A-demodulovany(:,2))./32*5);
title('V�voj chyby v �ase, aditivn� �um sigma=0.3.');
ylabel('Chyba p�epo�ten� na bity.');
subplot(313)
plot((A-demodulovany(:,3))./32*5);
title('V�voj chyby v �ase, aditivn� �um sigma=0.9.');
ylabel('Chyba p�epo�ten� na bity.');