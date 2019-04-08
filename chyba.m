function [output] =chyba(input1,input2)
output=sum(abs((input1-input2)))/(length(input1)*32)*5; %výpoèet chyby pøevedený na poèet bitù

end