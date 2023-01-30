xk =[ -1 ,0 ,2 ,5];
yk=[10 ,7 ,7 ,22];

P =0;
x = poly(0) ;
for k =0:3
    p = yk ( k +1)
    for j =0:3
        if( j ~= k )
            p = p *(( x - xk ( j +1) ) /( xk ( k +1) - xk ( j +1) ) );
            end
        end
    P = P + p ;
end
disp (P , 'P= ' );