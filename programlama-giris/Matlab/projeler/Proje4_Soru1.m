function [satirSayisi sutunSayisi]=Proje4_Soru1(A) 
k=0;
for i=1:1:5
    for j=1:1:5
        B(k)=A(i,j)
        k=k+1;
        if satirSayisi=5
            for j=5:-1:1
                B(k)=A(i,j)
                k=k+1;
                if sutunSayisi=1
                    for i=5:-1:2
                        B(k)=A(i,j)
                        k=k+1;
                        if satirSayisi=2
                            for j=1:1:4
                                B(k)=A(i,j)
                                k=k+1;
                                if satirSayisi=5
                                    for i=4:-1:2
                                     B(k)=A(i,j)
                                         k=k+1;
                                         if sutunSayisi=2
                                             for j=5:-1:3
                                              B(k)=A(i,j)
                                              k=k+1;
                                              if satirSayisi=3 
                                             for j=2:1:3
                                                  B(k)=A(i,j)
                                                  k=k+1;
                                             if sutunSayisi=3
                                             for i=3:1:4
                                                  B(k)=A(i,j)
                                                  k=k+1;
                                             end
                                             end
                                             end
                                              end
                                             end
                                         end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
end                                                
end
end
end
end
end
end
end