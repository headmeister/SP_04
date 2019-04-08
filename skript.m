%% generovani dat a modulace signálu
generuj(195201,31,'data.mat');
load('data.mat');
%A(1:195201)=7;
modulovany=map(A);
demodulovany(1:length(A),1:3)=0;
error(1:3)=0;
%% øetìzec pøenosu
for(i=1:3)%% tøi pokusy s rùznou úrovní šumu
zas_modulovany=zasum(modulovany,0.3*i-0.3);
demodulovany(:,i)=demap(zas_modulovany);
error(i)=chyba(A,demodulovany(:,i));
disp(['Prùmìrná absolutní chyba pøepoètená na bity pøi šumu sigma=',num2str(0.3*i-0.3),' je ', num2str(error(i)), '.'] );
end

%% zobrazeni
subplot(311);
plot((A-demodulovany(:,1))./32*5);
title('Vývoj chyby v èase, aditivní šum sigma=0.');
ylabel('Chyba pøepoètená na bity.');
subplot(312)
plot((A-demodulovany(:,2))./32*5);
title('Vývoj chyby v èase, aditivní šum sigma=0.3.');
ylabel('Chyba pøepoètená na bity.');
subplot(313)
plot((A-demodulovany(:,3))./32*5);
title('Vývoj chyby v èase, aditivní šum sigma=0.9.');
ylabel('Chyba pøepoètená na bity.');