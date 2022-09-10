source('ETL/clean.R')

minute<-minute(df$CRASHDATE)
ho<-hour(df$CRASHDATE)
ho<-as.integer(ho)
one<-length(ho[ho==1])
two<-length(ho[ho==2])
three<-length(ho[ho==3])
four<-length(ho[ho==4])
five<-length(ho[ho==5])
six<-length(ho[ho==6])
seven<-length(ho[ho==7])
eight<-length(ho[ho==9])
nine<-length(ho[ho==9])
ten<-length(ho[ho==10])
eleven<-length(ho[ho==11])
twelve<-length(ho[ho==12])
naho<-length(ho[is.na(ho)])
hcrashes<-c(one,two,three,four,five,six,seven,eight,nine,ten,eleven,twelve,naho)
hnames<-c('1:00','2:00','3:00','4:00','5:00','6:00','7:00','8:00','9:00','10:00','11:00','12:00','NA')

hcrashes




MON<-length(df$DAYOFWEEK[df$DAYOFWEEK=='MON'])
TUE<-length(df$DAYOFWEEK[df$DAYOFWEEK=='TUE'])
WED<-length(df$DAYOFWEEK[df$DAYOFWEEK=='WED'])
THU<-length(df$DAYOFWEEK[df$DAYOFWEEK=='THU'])
FRI<-length(df$DAYOFWEEK[df$DAYOFWEEK=='FRI'])   
SAT<-length(df$DAYOFWEEK[df$DAYOFWEEK=='SAT'])
SUN<-length(df$DAYOFWEEK[df$DAYOFWEEK=='SUN'])
naday<-length(df$DAYOFWEEK[is.na(df$DAYOFWEEK)])
dcrashes<-c(MON,TUE,WED,THU,FRI,SAT,SUN,naday)
dnames<-c('MON','TUE','WED','THU','FRI','SAT','SUN','N/A')

mo<-month(df$CRASHDATE)
mo<-as.integer(month)
JAN<-length(mo[mo==1])
FEB<-length(mo[mo==2])
MAR<-length(mo[mo==3])
APR<-length(mo[mo==4])
MAY<-length(mo[mo==5])
JUN<-length(mo[mo==6])
JUL<-length(mo[mo==7])
AUG<-length(mo[mo==8])
SEP<-length(mo[mo==9])
OCT<-length(mo[mo==10])
NOV<-length(mo[mo==11])
DEC<-length(mo[mo==12])
mcrashes<-c(JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC)
mnames<-c('JAN','FEB','MAR','APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC')
monthmax<-max(mcrashes) #OCT

year<-year(df$CRASHDATE)
year<-as.integer(year)
twentyten<-length(year[year == 2010])
twentyeleven<-length(year[year == 2011])
twentytwelve<-length(year[year == 2012])
twentythirteen<-length(year[year == 2013])
twentyfourteen<-length(year[year == 2014])
twentyfifteen<-length(year[year == 2015])
twentysixteen<-length(year[year == 2016])
twentyseventeen<-length(year[year == 2017])
twentyeighteen<-length(year[year == 2019])
twentynineteen<-length(year[year == 2020])
twentytwenty<-length(year[year == 2020])
twentytwentyone<-length(year[year == 2021])
ycrashes<-c(twentyten,twentyeleven,twentytwelve,twentythirteen,twentyfourteen,twentyfifteen,twentysixteen,twentyseventeen,twentyeighteen,twentynineteen,twentytwenty,twentytwentyone)
ynames<-c('2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021')
# ymax<-max(ycrashes) #2016

saylerpark<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='SAYLER  PARK'])
eastpricehill<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='EAST PRICE HILL'])
avondale<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='AVONDALE'])                 
queensgate<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='QUEENSGATE'])                
campwashington<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='CAMP  WASHINGTON'])           
carthage<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='CARTHAGE'])                 
westend<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='WEST  END'])                  
roselawn<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='ROSELAWN'])                  
pleasantridge<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='PLEASANT RIDGE'])         
overtherhine<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='OVER-THE-RHINE'])            
westpricehill<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='WEST PRICE HILL'])            
corryville<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='CORRYVILLE'])                
riverside<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='C. B. D. / riverside'])    
westwood<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='WESTWOOD'])                   
clifton<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='CLIFTON'])                   
eastend<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='EAST  END'])                 
oakley<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='OAKLEY'])                     
southfairmont<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='SOUTH  FAIRMOUNT'])          
walnuthills<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='WALNUT HILLS'])              
eastwalnuthills<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='EAST WALNUT HILLS'])          
hydepark<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='HYDE PARK'])                 
wintonhills<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='WINTON HILLS'])              
bondhill<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='BONDHILL'])                  
springgrovevillage<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='SPRING GROVE VILLAGE'])      
northside<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='NORTHSIDE'])                  
northfairmont<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='NORTH FAIRMOUNT'])            
cumminsvilles<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='S.. CUMMINSVILLE'])         
englishwoods<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='ENGLISH  WOODS'])             
universityheights<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='CLIFTON/UNIVERSITY HEIGHTS'])
madisonville<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='MADISONVILLE'])              
naneighborhoods<-length(df$CPD_NEIGHBORHOOD[is.na(df$CPD_NEIGHBORHOOD)])                           
mountairy<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='MOUNT AIRY'])                
fairview<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='FAIRVIEW'])               
collegehill<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='COLLEGE  HILL'])             
evanston<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='EVANSTON'])               
mtwashington<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='MT.  WASHINGTON'])         
columbiatusculum<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='COLUMBIA / TUSCULUM'])       
eastwestwood<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='EAST  WESTWOOD'])             
millvale<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='MILLVALE'])                  
paddockhills<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='PADDOCK  HILLS'])           
linwood<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='LINWOOD'])                    
california<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='CALIFORNIA'])                
kennedyheights<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='KENNEDY  HEIGHTS'])           
riverside<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='RIVERSIDE'])                  
northavondale<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='NORTH AVONDALE'])            
lowerpricehill<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='LOWER PRICE  HILL'])          
hartwell<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='HARTWELL'])                  
mtlookout<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='MT.  LOOKOUT'])              
mtadams<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='MOUNT  ADAMS'])               
mtauburn<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='MOUNT  AUBURN'])              
sedamsville<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='SEDAMSVILLE'])               
pendleton<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='PENDLETON'])                 
fayapts<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=='FAY APARTMENTS'])           
obryonville<-length(df$CPD_NEIGHBORHOOD[df$CPD_NEIGHBORHOOD=="O'BRYONVILLE"])
ncrashes<-c(saylerpark,eastpricehill,avondale,queensgate,campwashington,carthage,westend,roselawn,pleasantridge,overtherhine,westpricehill,corryville,riverside,westwood,clifton,eastend,oakley,southfairmont,walnuthills,eastwalnuthills,hydepark,wintonhills,bondhill,springgrovevillage,northside,northfairmont,cumminsvilles,englishwoods,universityheights,madisonville,naneighborhoods,mountairy,fairview,collegehill,evanston,mtwashington,columbiatusculum,eastwestwood,millvale,paddockhills,linwood,california,kennedyheights,riverside,northavondale,lowerpricehill,hartwell,mtlookout,mtadams,mtauburn,sedamsville,pendleton,fayapts,obryonville)
nnames<-c('Sayler park','East Price Hill','Avondale','Queensgate','Camp Washington','Carthage','West End','Roselawn', 'Pleasant Ridge','Over-The_Rhine' ,'West Price Hill','Corryville','Riverside','Westwood','Clifton','East End','Oakley','South Fairmont', 'Walnut Hills','East Walnut Hills','Hyde Park','Winton Hills','Bond Hill','Spring Grove Village','Northside','North Fairmont','Cumminsvilles','English Woods','University Heights','Madisonville','N/A', 'Mt. Airy ','Fairview','College Hill','Evanston','Mt. Washington','Columbia/Tusculum','East Westwood','Millvale','Paddock Hills','Linwood','California','Kennedy Heights','Riverside','North Avondale','lower Price Hill','Hartwell','Mt. Lookout','Mt. Adams','Mt. Auburn','Sedamsville','Pendleton','Fay Apartnents',"O'bryonville")

other1<-length(df$UNITTYPE[df$UNITTYPE=="OTHER VEHICLE"]) #other
other2<-length(df$UNITTYPE[df$UNITTYPE=="OTHER MED/HEAVY VEHICLE"]) #other
other3<-length(df$UNITTYPE[df$UNITTYPE=="OTHER PASSENGER VEHICLE"]) #other
other4<-length(df$UNITTYPE[df$UNITTYPE=="OTHER NON-MOTORIST"])
unknown1<-length(df$UNITTYPE[df$UNITTYPE=="UNKNOWN OR HIT/SKIP"]) #unknown
unknown2<-length(df$UNITTYPE[df$UNITTYPE=="UNKNOWN"]) #unknown
pickup1<-length(df$UNITTYPE[df$UNITTYPE=="PICKUP"]) #pickup
pickup2<-length(df$UNITTYPE[df$UNITTYPE=="PICK UP"]) #pickup
minivan1<-length(df$UNITTYPE[df$UNITTYPE=="PASSENGER VAN (MINIVAN)" ]) #minivan
minivan2<-length(df$UNITTYPE[df$UNITTYPE=="MINIVAN"]) #minivan
motorcycle1<-length(df$UNITTYPE[df$UNITTYPE=="MOTORCYCLE 3 WHEELED"]) #motorcycle
motorcycle2<-length(df$UNITTYPE[df$UNITTYPE=="MOTORIZED BICYCLE"]) #motorcycle
motorcycle3<-length(df$UNITTYPE[df$UNITTYPE=="MOTORCYCLE"]) #motorcycle
motorcycle4<-length(df$UNITTYPE[df$UNITTYPE=="MOTORCYCLE 2 WHEELED"]) #motorcycle
tractor1<-length(df$UNITTYPE[df$UNITTYPE=="TRACTOR/SEMI-TRAILER"]) #tractortrailer
tractor3<-length(df$UNITTYPE[df$UNITTYPE=="TRACTOR/TRIPLES"]) #tractortrailer
tractor2<-length(df$UNITTYPE[df$UNITTYPE=="TRUCK/TRACTOR (BOBTAIL)"]) #tractor
tractor4<-length(df$UNITTYPE[df$UNITTYPE=="TRACTOR/DOUBLES"])
tractor5<-length(df$UNITTYPE[df$UNITTYPE=="SEMI-TRACTOR"])
van1<-length(df$UNITTYPE[df$UNITTYPE=="VAN (9-15 SEATS)"]) #van
van2<-length(df$UNITTYPE[df$UNITTYPE=="CARGO VAN"]) #van
van3<-length(df$UNITTYPE[df$UNITTYPE=="VAN"]) #van
bus1<-length(df$UNITTYPE[df$UNITTYPE=="BUS (16+ PASSENGERS)"]) #bus
bus2<-length(df$UNITTYPE[df$UNITTYPE=="BUS /VAN (9-15 SEATS INCLUDING THE DRIVER)"])  #bus
bus3<-length(df$UNITTYPE[df$UNITTYPE=="BUS (16+ SEATS, INCLUDING THE DRIVER)"]) #bus
truck1<-length(df$UNITTYPE[df$UNITTYPE=="SINGLE UNIT TRUCK / TRAILER"]) #truck
truck2<-length(df$UNITTYPE[df$UNITTYPE=="SINGLE UNIT TRUCK; 3+ AXLES"]) #truck
truck3<-length(df$UNITTYPE[df$UNITTYPE=="SINGLE UNIT TRUCK OR VAN 2 AXLES, 6 TIRES"]) #truck
truck4<-length(df$UNITTYPE[df$UNITTYPE=="SINGLE UNIT TRUCK"]) #truck
bike1<-length(df$UNITTYPE[df$UNITTYPE=="BICYCLE"]) #bike
bike2<-length(df$UNITTYPE[df$UNITTYPE=="BICYCLE/PEDACYCLIST"]) #bike
atv1<-length(df$UNITTYPE[df$UNITTYPE=="SNOWMOBILE/ATV"]) #atv
atv2<-length(df$UNITTYPE[df$UNITTYPE=="ALL TERRAIN VEHICLE (ATV/UTV)"]) #atv
atv<-atv1+atv2
buggy1<-length(df$UNITTYPE[df$UNITTYPE=="ANIMAL WITH BUGGY, WAGON, SURREY"])
buggy2<-length(df$UNITTYPE[df$UNITTYPE=="ANIMAL WITH RIDER OR ANIMAL DRAWN VEHICLE"])


subcompact<-length(df$UNITTYPE[df$UNITTYPE=="SUB-COMPACT"])
midsize<-length(df$UNITTYPE[df$UNITTYPE=="MID SIZE"])
van<-van1+van2+van3
minivan<-minivan1+minivan2
passengercar<-length(df$UNITTYPE[df$UNITTYPE=="PASSENGER CAR"])
compact<-length(df$UNITTYPE[df$UNITTYPE=="COMPACT"])
suv<-length(df$UNITTYPE[df$UNITTYPE=="SPORT UTILITY VEHICLE"])
pickup<-pickup1+pickup2
truck<-truck1+truck2+truck3+truck4
bus<-bus1+bus2+bus3
fullsize<-length(df$UNITTYPE[df$UNITTYPE=="FULL SIZE"])
motorcycle<-motorcycle1+motorcycle2+motorcycle3+motorcycle4
tractor<-tractor1+tractor2+tractor3+tractor4+tractor5
pedestrian<-length(df$UNITTYPE[df$UNITTYPE=="PEDESTRIAN/SKATER"])
bike<-bike1+bike2
buggy<-buggy1+buggy2
heavyequipment<-length(df$UNITTYPE[df$UNITTYPE=="HEAVY EQUIPMENT"])
wheelchair<-length(df$UNITTYPE[df$UNITTYPE=="WHEELCHAIR (ANY TYPE)"])
moped<-length(df$UNITTYPE[df$UNITTYPE=="MOPED OR MOTORIZED BICYCLE"])
motorhome<-length(df$UNITTYPE[df$UNITTYPE=="MOTORHOME"])
autocycle<-length(df$UNITTYPE[df$UNITTYPE=="AUTOCYCLE"])
golfcart<-length(df$UNITTYPE[df$UNITTYPE=="GOLF CART"])
train<-length(df$UNITTYPE[df$UNITTYPE=="TRAIN"])
limo<-length(df$UNITTYPE[df$UNITTYPE=="LIMO (LIVERY VEHICLE)"])
unknown<-unknown1+unknown2
other<- other1+other2+other3+other4
# nacartype<-length(df$UNITTYPE[is.na(df$UNITTYPE)])
ucrashes<-c(subcompact,midsize,van,minivan,passengercar,compact,suv,pickup,truck,bus,fullsize,motorcycle,tractor,pedestrian,bike,buggy,heavyequipment,wheelchair,moped,motorhome,autocycle,golfcart,train,limo,other,unknown)
unames<-c('SUB-COMPACT','MID SIZE','VAN','MINIVAN','PASSENGER CAR','COMPACT','SUV','PICK-UP','TRUCK','BUS','FULL-SIZE','MOTORCYCLE','TRACTOR','PEDESTRIAN','BIKE','ANIMAL DRAWN VEHICLE','HEAVY EQUIPTMENT','WHEELCHAIR','MOPED','MOTORHOME','AUTOCYCLE','GOLF CART','TRAIN','LIMO','OTHER','UNKNOWN')

rcpdry<-length(df$ROADCONDITIONSPRIMARY[df$ROADCONDITIONSPRIMARY=="DRY"])                      
rcpwet<-length(df$ROADCONDITIONSPRIMARY[df$ROADCONDITIONSPRIMARY=="WET"])                      
rcpice<-length(df$ROADCONDITIONSPRIMARY[df$ROADCONDITIONSPRIMARY=="ICE"])                 
rcpwater<-length(df$ROADCONDITIONSPRIMARY[df$ROADCONDITIONSPRIMARY=="WATER (STANDING, MOVING)"])
rcpsnow<-length(df$ROADCONDITIONSPRIMARY[df$ROADCONDITIONSPRIMARY=="SNOW"])                 
rcpslush<-length(df$ROADCONDITIONSPRIMARY[df$ROADCONDITIONSPRIMARY=="SLUSH"])
smdg<-length(df$ROADCONDITIONSPRIMARY[df$ROADCONDITIONSPRIMARY=="SAND, MUD, DIRT, OIL, GRAVEL"])
rcpother<-length(df$ROADCONDITIONSPRIMARY[df$ROADCONDITIONSPRIMARY=="OTHER"])
rcpunknown<-length(df$ROADCONDITIONSPRIMARY[df$ROADCONDITIONSPRIMARY=="UNKNOWN"])
rcpcrashes<-c(rcpdry,rcpwet,rcpice,rcpwater,rcpsnow,rcpslush,smdg,rcpother,rcpunknown)
rcpnames<-c('DRY','WET','ICE','WATER','SNOW','SLUSH','SAND, MUD, DIRT, OIL, GRAVEL','OTHER','UNKNOWN')
                                  
wclear<-length(df$WEATHER[df$WEATHER=="CLEAR"])
wrain<-length(df$WEATHER[df$WEATHER=="RAIN"])
wcloudy<-length(df$WEATHER[df$WEATHER=="CLOUDY"]) 
wsnow<-length(df$WEATHER[df$WEATHER=="SNOW"]) 
wfog<-length(df$WEATHER[df$WEATHER=="FOG, SMOG, SMOKE"])
wcrosswinds<-length(df$WEATHER[df$WEATHER=="SEVERE CROSSWINDS"]) 
wsleet1<-length(df$WEATHER[df$WEATHER=="SLEET, HAIL"]) 
wsleet2<-length(df$WEATHER[df$WEATHER=="SLEET,HAIL"]) 
wbssdn<-length(df$WEATHER[df$WEATHER=="BLOWING SAND, SOIL, DIRT, SNOW"]) 
wfreezingrain<-length(df$WEATHER[df$WEATHER=="FREEZING RAIN OR FREEZING DRIZZLE"]) 
wother1<-length(df$WEATHER[df$WEATHER=="OTHER/UNKNOWN"]) 
wother2<-length(df$WEATHER[df$WEATHER==" OTHER/UNKNOWN"]) 
wsleet<-wsleet1+wsleet2
wother<-wother1+wother2
wcrashes<-c(wclear,wrain,wcloudy,wsnow,wfog,wcrosswinds,wsleet,wbssdn,wfreezingrain,wother)
wnames<-c('CLEAR','RAIN','CLOUDY','SNOW','FOG','SEVERE CROSSWINDS','SLEET, HAIL','BLOWING SAND, SOIL, DIRT, SNOW','FREEZING RAIN','OTHER')
                              
mocrearend<-length(df$MANNEROFCRASH[df$MANNEROFCRASH=="REAR-END"])                                              
mocother<-length(df$MANNEROFCRASH[df$MANNEROFCRASH=="NOT COLLISION BETWEEN TWO MOTOR VEHICLES IN TRANSPORT"])
mocsideswipe1<-length(df$MANNEROFCRASH[df$MANNEROFCRASH=="SIDESWIPE, SAME DIRECTION"])                            
mocangle<-length(df$MANNEROFCRASH[df$MANNEROFCRASH=="ANGLE"])                  
mocheadon<-length(df$MANNEROFCRASH[df$MANNEROFCRASH=="HEAD-ON"])                                               
mocbacking<-length(df$MANNEROFCRASH[df$MANNEROFCRASH=="BACKING"])                                             
mocunknown<-length(df$MANNEROFCRASH[df$MANNEROFCRASH=="UNKNOWN"])                                             
mocsideswipe2<-length(df$MANNEROFCRASH[df$MANNEROFCRASH=="SIDESWIPE, OPPOSITE DIRECTION"])                       
mocreartorear<-length(df$MANNEROFCRASH[df$MANNEROFCRASH=="REAR-TO-REAR"])
moccrashes<-c(mocrearend,mocsideswipe1,mocsideswipe2,mocangle,mocother,mocheadon,mocbacking,mocreartorear,mocunknown)
mocnames<-c('REAR-END','SIDESWIPE, SAME DIRECTION','SIDESWIPE, OPPOSITE DIRECTION','ANGLE','NOT COLLISION BETWEEN TWO MOTOR VEHICLES IN TRANSPORT','HEAD-ON','BACKING','REAR-TO-REAR','UNKNOWN')

                          
     
                               
                       
                                    
                          
                    
                               
                       
 
                       
                   
                    
                  
                                  
                                
                          
                             
                           

                                   
               
                
                       
                        
                 
                           
                                 
                         
                             
             
           
                           
                      
 
                                 
                                 
                       
                                     
                     








# write.csv(df,'inf/crash_data.csv')

