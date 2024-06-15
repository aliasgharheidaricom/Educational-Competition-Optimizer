 
% 📜 Educational Competition Optimizer (ECO) source codes (version 1.0)
% 🌐 Website and codes of Educational Competition Optimizer(ECO):
 
% 🔗 http://www.aliasgharheidari.com/ECO.html
% 🔗 https://github.com/junbolian/ECO

% 👥 Junbo Lian, Ting Zhu, Ling Ma, Xincan Wu, Ali Asghar Heidari, Yi Chen, Huiling Chen, Guohua Hui

% 📅 Last update: May 21 2024

% 📧 E-Mail: junbolian@qq.com, as_heidari@ut.ac.ir, aliasghar68@gmail.com, chenhuiling.jlu@gmail.com
  
%----------------------------------------------------------------------------------------------------------------------------------------------------%
% ✍️ Authors: Junbo Lian (junbolian@qq.com), Ali Asghar Heidari(as_heidari@ut.ac.ir, aliasghar68@gmail.com), Huiling Chen(chenhuiling.jlu@gmail.com) 
%----------------------------------------------------------------------------------------------------------------------------------------------------%

% 📜 After use of code, please users cite to the main paper on Educational Competition Optimizer (ECO):
% Junbo Lian, Ting Zhu, Ling Ma, Xincan Wu, Ali Asghar Heidari, Yi Chen, Huiling Chen*, Guohua Hui*
% The Educational Competition Optimizer
% INTERNATIONAL JOURNAL OF SYSTEMS SCIENCE, Taylor & Francis Online - 2024 

%----------------------------------------------------------------------------------------------------------------------------------------------------%

% 📊 You can use and compare with other optimization methods developed recently:
%     - (AO) 2024: 🔗 http://www.aliasgharheidari.com/AO.html
%     - (PO) 2024: 🔗 http://www.aliasgharheidari.com/PO.html
%     - (RIME) 2023: 🔗 http://www.aliasgharheidari.com/RIME.html
%     - (INFO) 2022: 🔗 http://www.aliasgharheidari.com/INFO.html
%     - (RUN) 2021: 🔗 http://www.aliasgharheidari.com/RUN.html
%     - (HGS) 2021: 🔗 http://www.aliasgharheidari.com/HGS.html
%     - (SMA) 2020: 🔗 http://www.aliasgharheidari.com/SMA.html
%     - (HHO) 2019: 🔗 http://www.aliasgharheidari.com/HHO.html

%____________________________________________________________________________________________________________________________________________________%

%% Logistic chaotic mapping initialization
function Positions=initializationLogistic(pop,dim,ub,lb)

    Boundary_no= length(ub); % number of boundaries

    for i = 1:pop
        for j = 1:dim
            x0 = rand;
            a = 4;
            x = a*x0*(1-x0);
            if Boundary_no == 1
                Positions(i,j) = (ub-lb)*x + lb;
                if Positions(i,j)>ub
                    Positions(i,j) = ub;
                end
                if Positions(i,j)<lb
                    Positions(i,j) = lb;
                end
            else
                Positions(i,j) = (ub(j)-lb(j))*x + lb(j);
                if Positions(i,j)>ub(j)
                    Positions(i,j) = ub(j);
                end
                if Positions(i,j)<lb(j)
                    Positions(i,j) = lb(j);
                end
            end
            x0 = x;
        end
    end
end





