function[output] =zasum(input,sigma)

noise=sigma*randn(length(input),1)+1i*sigma*randn(length(input),1);%pøièítání adaptivního komplexního šumu
output=input+noise;
end