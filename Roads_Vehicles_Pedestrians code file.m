function [scenario, egoVehicle] = FinalScenario()

scenario = drivingScenario;

% Adding all road segments
roadCenters = [-240.04481506348 -110.48310852051 0.16999816894531;
    -217.95216253284 -110.5842059222 0.16999816894531;
    -195.85951000221 -110.6853033239 0.16999816894531];
headings = [-0.262187349274043;-0.262187349274043;-0.262187349274043];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Solid', 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('DoubleSolid', 'Color', [0.98 0.86 0.36], 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('Solid', 'Width', 0.125)
    laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Unmarked')];
lanetypes = [laneType('Border')
    laneType('Shoulder')
    laneType('Shoulder')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Shoulder')
    laneType('Shoulder')
    laneType('Border')];
laneSpecification = lanespec(10, 'Width', [2 0.635 0.5 3.5 3.5 3.5 3.5 0.5 0.635 2], 'Marking', marking, 'Type', lanetypes);
road(scenario, roadCenters, 'Heading', headings, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [-170.7857633571 -110.80004240438 0.16999816894531;
    -146.66312223641 -110.91042916468 0.16999816894531;
    -122.54048111572 -111.02081592498 0.16999816894531];
headings = [-0.262187349274043;-0.262187349274043;-0.262187349274043];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Solid', 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('DoubleSolid', 'Color', [0.98 0.86 0.36], 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('Solid', 'Width', 0.125)
    laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Unmarked')];
lanetypes = [laneType('Border')
    laneType('Shoulder')
    laneType('Shoulder')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Shoulder')
    laneType('Shoulder')
    laneType('Border')];
laneSpecification = lanespec(10, 'Width', [2 0.635 0.5 3.5 3.5 3.5 3.5 0.5 0.635 2], 'Marking', marking, 'Type', lanetypes);
road(scenario, roadCenters, 'Heading', headings, 'Lanes', laneSpecification, 'Name', 'Road1');

roadCenters = [-97.282707289301 -111.1363971257 0.16999816894531;
    -66.013084526058 -111.27948893457 0.16999816894531;
    -34.743461762814 -111.42258074345 0.16999816894531];
headings = [-0.262187349274043;-0.262187349274043;-0.262187349274043];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Solid', 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('DoubleSolid', 'Color', [0.98 0.86 0.36], 'Width', 0.125)
    laneMarking([laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514) laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)], 'SegmentRange', [0.00122157994943037 0.99877842005057])
    laneMarking('Solid', 'Width', 0.125)
    laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Unmarked')];
lanetypes = [laneType('Border')
    laneType('Shoulder')
    laneType('Shoulder')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Shoulder')
    laneType('Shoulder')
    laneType('Border')];
laneSpecification = lanespec(10, 'Width', [2 0.635 0.5 3.5 3.5 3.5 3.5 0.5 0.635 2], 'Marking', marking, 'Type', lanetypes);
road(scenario, roadCenters, 'Heading', headings, 'Lanes', laneSpecification, 'Name', 'Road2');

roadCenters = [-9.6987766244576 -111.53718683659 0.16999816894531;
    26.988594178214 -111.70507060963 0.16999816894531;
    63.675964980886 -111.87295438267 0.16999816894531];
headings = [-0.262187349274043;-0.262187349274043;-0.262187349274043];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Solid', 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('DoubleSolid', 'Color', [0.98 0.86 0.36], 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('Solid', 'Width', 0.125)
    laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Unmarked')];
lanetypes = [laneType('Border')
    laneType('Shoulder')
    laneType('Shoulder')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Shoulder')
    laneType('Shoulder')
    laneType('Border')];
laneSpecification = lanespec(10, 'Width', [2 0.635 0.5 3.5 3.5 3.5 3.5 0.5 0.635 2], 'Marking', marking, 'Type', lanetypes);
road(scenario, roadCenters, 'Heading', headings, 'Lanes', laneSpecification, 'Name', 'Road3');

roadCenters = [89.211934460393 -111.98980862462 0.16999816894531;
    121.6665125576 -112.13832286546 0.16999816894531;
    154.12109065481 -112.28683710631 0.16999816894531];
headings = [-0.262187349274043;-0.262187349274043;-0.262187349274043];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Solid', 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('DoubleSolid', 'Color', [0.98 0.86 0.36], 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('Solid', 'Width', 0.125)
    laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Unmarked')];
lanetypes = [laneType('Border')
    laneType('Shoulder')
    laneType('Shoulder')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Shoulder')
    laneType('Shoulder')
    laneType('Border')];
laneSpecification = lanespec(10, 'Width', [2 0.635 0.5 3.5 3.5 3.5 3.5 0.5 0.635 2], 'Marking', marking, 'Type', lanetypes);
road(scenario, roadCenters, 'Heading', headings, 'Lanes', laneSpecification, 'Name', 'Road4');

roadCenters = [179.33249666438 -112.4022061249 0.16999816894531;
    188.42065049283 -112.44379410249 0.16999816894531;
    197.50880432129 -112.48538208008 0.16999816894531];
headings = [-0.262187349274043;-0.262187349274043;-0.262187349274043];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Solid', 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('DoubleSolid', 'Color', [0.98 0.86 0.36], 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('Solid', 'Width', 0.125)
    laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Unmarked')];
lanetypes = [laneType('Border')
    laneType('Shoulder')
    laneType('Shoulder')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Shoulder')
    laneType('Shoulder')
    laneType('Border')];
laneSpecification = lanespec(10, 'Width', [2 0.635 0.5 3.5 3.5 3.5 3.5 0.5 0.635 2], 'Marking', marking, 'Type', lanetypes);
road(scenario, roadCenters, 'Heading', headings, 'Lanes', laneSpecification, 'Name', 'Road5');

roadCenters = [-240.33290100098 0.078739166259767 0.17152404785156;
    -220.52643183948 -0.033016511262007 0.17152404785156;
    -200.71996267799 -0.14477218878378 0.17152404785156];
headings = [-0.32328128030712;-0.32328128030712;-0.32328128030712];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking([laneMarking('Solid', 'Width', 0.125) laneMarking('Unmarked')], 'SegmentRange', [0.999909907479622 9.00925203781552e-05])
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking([laneMarking('DoubleSolid', 'Color', [0.98 0.86 0.36], 'Width', 0.125) laneMarking('Unmarked')], 'SegmentRange', [0.999909907479622 9.00925203781552e-05])
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking([laneMarking('Solid', 'Width', 0.125) laneMarking('Unmarked')], 'SegmentRange', [0.999909907479622 9.00925203781552e-05])
    laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Unmarked')];
lanetypes = [laneType('Border')
    laneType('Shoulder')
    laneType('Shoulder')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Shoulder')
    laneType('Shoulder')
    laneType('Border')];
laneSpecification = lanespec(10, 'Width', [2 0.635 0.5 3.5 3.5 3.5 3.5 0.5 0.635 2], 'Marking', marking, 'Type', lanetypes);
road(scenario, roadCenters, 'Heading', headings, 'Lanes', laneSpecification, 'Name', 'Road6');

% Creating Road Centers
rg = driving.scenario.RoadGroup('Name', 'Roadgroup');
Centers = [70.9821621369666 -99.2524123985452 0.169990539550781;
    70.9842749812976 -99.3793363320344 0.169990539550781;
    63.8269292566415 -106.62359023675 0.169998168945312;
    63.7003533752345 -106.623011017359 0.169998168945312];
marking = laneMarking('Unmarked');
laneSpecification = lanespec(1, 'Width', 3.5, 'Marking', marking);
headings = [-89.0463116015223;-89.0463116015223;179.737812650726;179.737812650726];
road(rg, Centers, 'Lanes', laneSpecification, 'Heading', headings);

Centers = [67.4151563243951 -99.311790703348 0.169990539550781;
    66.3527523188953 -101.961244865894 0.169994351190356;
    63.7164651563301 -103.055547390624 0.169998168945312];
marking = laneMarking('Unmarked');
lanetypes = [laneType('Shoulder')
    laneType('Border')];
laneSpecification = lanespec(2, 'Width', [0.635 2], 'Marking', marking, 'Type', lanetypes);
headings = [-89.0463116015226;-134.654240922934;-180.259835596996];
road(rg, Centers, 'Lanes', laneSpecification, 'Heading', headings);

Centers = [74.4816772999661 -99.1941575795374 0.169990539550781;
    74.4848459811584 -99.3845083190732 0.169990539550781;
    74.4885805274527 -99.6088520146929 0.169990539550781;
    77.9034574187604 -109.25086809718 0.169994544881815;
    87.0440879735988 -113.729906742118 0.169998168945312;
    87.2684604014944 -113.730933484807 0.169998168945312;
    87.3603513921597 -113.731353983902 0.169998168945312;
    88.6733316887404 -113.737362266352 0.169998168945312;
    89.1749959321324 -113.739657914258 0.169998168945312;
    89.2039264314633 -113.739790302088 0.169998168945312];
marking = [laneMarking('DoubleSolid', 'Color', [0.98 0.86 0.36], 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)];
laneSpecification = lanespec(1, 'Width', 3.5, 'Marking', marking);
headings = [270.953688398478;270.953688398478;270.953688398478;308.051168438473;359.737812650726;359.737812650726;359.737812650726;359.737812650726;359.737812650726;359.737812650726];
road(rg, Centers, 'Lanes', laneSpecification, 'Heading', headings);

Centers = [89.2522834861601 -103.172400944008 0.169998168945312;
    88.7216884096162 -103.169972906744 0.169998168945312;
    85.0565450597502 -99.5488075884079 0.169990539550781;
    85.0477134385362 -99.0182696367191 0.169990539550781];
marking = laneMarking('Unmarked');
lanetypes = [laneType('Shoulder')
    laneType('Border')];
laneSpecification = lanespec(2, 'Width', [0.635 2], 'Marking', marking, 'Type', lanetypes);
headings = [179.737812650726;179.737812650726;90.9536883984776;90.9536883984776];
road(rg, Centers, 'Lanes', laneSpecification, 'Heading', headings);

Centers = [81.4807076259647 -99.077647941522 0.169990539550781;
    81.4838763071572 -99.2679986810578 0.169990539550781;
    81.4895449791093 -99.6085302248632 0.169990539550781;
    81.4926083881497 -99.7925569984426 0.169990539550781;
    83.7280170852766 -104.69588044777 0.169994280832107;
    89.0226333122045 -106.738887402194 0.169998168945312;
    89.207028047853 -106.739731204388 0.169998168945312;
    89.2359585471839 -106.739863592217 0.169998168945312];
marking = [laneMarking('Solid', 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)];
laneSpecification = lanespec(1, 'Width', 3.5, 'Marking', marking);
headings = [270.953688398478;270.953688398478;270.953688398478;270.953688398478;318.062477752353;359.737812650726;359.737812650726;359.737812650726];
road(rg, Centers, 'Lanes', laneSpecification, 'Heading', headings);

Centers = [63.6839730098163 -110.1229727052 0.169998168945312;
    64.2145753822385 -110.12540077585 0.169998168945312;
    64.6106479713085 -110.127213229541 0.169998168945312;
    65.5275526862966 -110.131409044605 0.169998168945312;
    65.6196641317995 -110.131830552516 0.169998168945312;
    65.8385145891417 -110.132832026312 0.169998168945312;
    75.088414486672 -114.871428266495 0.169994603527937;
    78.4084797763576 -124.804138584511 0.169990539550781;
    78.4121261996849 -125.023188509346 0.169990539550781];
marking = [laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('DoubleSolid', 'Color', [0.98 0.86 0.36], 'Width', 0.125)];
laneSpecification = lanespec(1, 'Width', 3.5, 'Marking', marking);
headings = [359.737812650726;359.737812650726;359.737812650726;359.737812650726;359.737812650726;359.737812650726;306.011311389953;270.953688398478;270.953688398478];
road(rg, Centers, 'Lanes', laneSpecification, 'Heading', headings);

Centers = [63.6519408940957 -117.122899415071 0.169998168945312;
    64.1825432665179 -117.12532748572 0.169998168945312;
    64.3635017797196 -117.126155563538 0.169998168945312;
    69.2967539077687 -119.165362471273 0.169994355557547;
    71.3953497904237 -124.073645784329 0.169990539550781;
    71.3983617377973 -124.254581124674 0.169990539550781;
    71.4071932329948 -124.785111506231 0.169990539550781;
    71.4130958304196 -125.139695548222 0.169990539550781];
marking = [laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('Solid', 'Width', 0.125)];
laneSpecification = lanespec(1, 'Width', 3.5, 'Marking', marking);
headings = [359.737812650726;359.737812650726;359.737812650726;315.345742968845;270.953688398478;270.953688398478;270.953688398478;270.953688398478];
road(rg, Centers, 'Lanes', laneSpecification, 'Heading', headings);

Centers = [67.8460900611149 -125.199076452164 0.169990539550781;
    67.8313536026832 -124.313820066919 0.169990539550781;
    66.7375262528353 -121.75566498693 0.169994359782377;
    64.1662183275418 -120.69279013393 0.169998168945312;
    63.6356159551195 -120.69036206328 0.169998168945312];
marking = laneMarking('Unmarked');
lanetypes = [laneType('Border')
    laneType('Shoulder')];
laneSpecification = lanespec(2, 'Width', [2 0.635], 'Marking', marking, 'Type', lanetypes);
headings = [90.9536883984776;90.9558570319888;135.345737203564;179.737812650726;179.737812650726];
road(rg, Centers, 'Lanes', laneSpecification, 'Heading', headings);

Centers = [-98.5812776092089 107.995369108667 0.170143127441406;
    -111.158733840892 108.001465718757 0.170143127441406;
    -123.736190072575 108.007562328847 0.170143127441406];
marking = [laneMarking('Unmarked')
    laneMarking('Solid', 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('DoubleSolid', 'Color', [0.98 0.86 0.36], 'Width', 0.125)
    laneMarking('Dashed', 'Width', 0.125, 'Length', 2.09999990463257, 'Space', 5.19999980926514)
    laneMarking('Solid', 'Width', 0.125)
    laneMarking('Solid', 'Width', 0.125)];
lanetypes = [laneType('Shoulder')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Driving')
    laneType('Shoulder')];
laneSpecification = lanespec(6, 'Width', [0.5 3.5 3.5 3.5 3.5 0.5], 'Marking', marking, 'Type', lanetypes);
headings = [179.972227293523;179.972227293523;179.972227293523];
road(rg, Centers, 'Lanes', laneSpecification, 'Heading', headings);

roadGroup(scenario, rg);

% Add the ego vehicle
egoVehicle = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [129.88 3.3 0.18], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car');
waypoints = [129.88 3.3 0.18;
    124.49 3.32 0.18;
    97.2 3.52 0.18;
    93.29 3.51 0.18;
    89.4 3.54 0.18;
    77.6 3.6 0.2;
    66.9 3.6 0.2;
    60.1 3.6 0.2;
    12.9 4.1 0.2;
    -2.62 4.46 0.18;
    -9.26 4.55 0.18;
    -62.9 4.7 0.2;
    -87.6 5 0.2;
    -95.9 5 0.2;
    -98.9 5.1 0.2;
    -101.3 6.4 0.2;
    -103.8 9.2 0.2;
    -105.4 12.1 0.2;
    -105.67 17.73 0.18;
    -105.72 24.17 0.18;
    -105.72 36.22 0.18;
    -105.9 57.8 0.2];
speed = [30;30;30;0;30;20;20;20;20;5;20;20;20;20;20;20;20;20;20;20;20;20];
waittime = [0;0;0;0.5;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];
trajectory(egoVehicle, waypoints, speed, waittime);

% Add the non-ego actors
car1 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [68.7 53.1 0.2], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car1');
waypoints = [68.7 53.1 0.2;
    69.15 19.06 0.18;
    69.29 12.92 0.18;
    69.4 9.6 0.2;
    68.2 7.2 0.2;
    65.5 4.9 0.2;
    62.1 3.8 0.2;
    54.37 3.67 0.18;
    46.3 3.8 0.2;
    32.7 3.9 0.2;
    -5.54 4.53 0.18;
    -10.7 4.6 0.2;
    -15.9 3.9 0.2;
    -18.31 2.66 0.18;
    -20.66 1.61 0.18;
    -24.19 1.03 0.18;
    -27.72 0.79 0.18;
    -31.15 0.7 0.18;
    -35.88 0.66 0.18;
    -59.8 1.1 0.2;
    -79.6 1.2 0.2;
    -91.6 1.3 0.2;
    -95.84 1.4 0.18;
    -98.81 1.57 0.18;
    -102.3 1.6 0.2;
    -105.9 1.2 0.2;
    -109.6 -0.4 0.2;
    -111 -3.6 0.2;
    -111.9 -8 0.2;
    -112.1 -11.8 0.2;
    -112.1 -15.2 0.2;
    -112.08 -33.05 0.18;
    -112.08 -38.94 0.18;
    -112.05 -62.72 0.18;
    -112.09 -68.76 0.18;
    -111.7 -94.3 0.2];
speed = [20;20;20;20;20;20;20;20;20;20;10;20;20;20;20;20;20;20;20;20;20;20;20;20;20;20;20;20;20;20;20;20;20;20;20;20];
waittime = [0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];
trajectory(car1, waypoints, speed, waittime);

car2 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [77.5 -61.4 0.2], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car2');
waypoints = [77.5 -61.4 0.2;
    77.3 -45.9 0.18;
    77.22 -34.01 0.18;
    76.87 -16.4 0.18;
    76.22 23.11 0.18;
    75.68 57.03 0.18;
    75.16 91.05 0.18;
    75.09 100.16 0.18;
    73.84 105.79 0.18;
    70.31 109.37 0.18;
    65.25 110.11 0.18;
    61.16 110.17 0.18;
    58.09 110.13 0.18;
    34.83 110.05 0.18;
    5.39 109.94 0.18;
    -41.1 110.1 0.2;
    -64.8 109.8 0.2;
    -96.56 109.79 0.18;
    -102.79 109.61 0.18;
    -108.35 108.5 0.18;
    -111.93 106.64 0.18;
    -112.92 101.58 0.18;
    -112.94 95.49 0.18;
    -112.7 55.8 0.2;
    -112.54 33.82 0.18;
    -112.5 14.1 0.2;
    -112.3 5.4 0.2;
    -110.32 1.81 0.18;
    -105.77 -1.47 0.18;
    -101.06 -2.33 0.18;
    -95.83 -2.51 0.18;
    -87.83 -2.62 0.18;
    -83.75 -2.68 0.18;
    -41.95 -2.5 0.18;
    -35.97 -2.46 0.18];
speed = [40;40;40;40;40;40;40;40;40;40;40;40;40;40;50;50;50;50;50;50;50;50;50;40;40;40;40;40;40;40;40;40;40;40;40];
waittime = [0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];
trajectory(car2, waypoints, speed, waittime);

car3 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [77.59 -68.93 0.18], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car3');
waypoints = [77.59 -68.93 0.18;
    77.35 -40.12 0.18;
    77.24 -28.22 0.18;
    76.2 26 0.2;
    75.81 55.14 0.18;
    75.27 93.04 0.18;
    74.7 103.2 0.2;
    72.7 108.1 0.2;
    68.1 110.1 0.2;
    63.1 110.4 0.2;
    56.4 110.3 0.2;
    36.9 110.3 0.2;
    6.01 110.1 0.18;
    -35 110.2 0.2;
    -62.9 110.1 0.2;
    -94.4 110 0.2;
    -100.7 109.9 0.2;
    -106.3 109.3 0.2;
    -110.3 108 0.2;
    -112.5 105.8 0.2;
    -112.9 99.5 0.2;
    -113.1 92.7 0.2;
    -113.1 86.8 0.2;
    -112.58 56.74 0.18;
    -112.5 36.1 0.2;
    -112.5 11 0.2;
    -112.2 4.4 0.2;
    -109.8 1.1 0.2;
    -107.1 -1 0.2;
    -102.2 -2.3 0.2;
    -85.6 -2.4 0.2;
    -71.3 -2.6 0.2;
    -45 -2.5 0.2;
    -37.8 -2.5 0.2];
speed = [40;40;40;40;40;40;40;40;40;40;40;40;50;50;50;50;50;50;50;50;50;50;50;40;40;40;40;40;40;40;40;40;40;40];
waittime = [0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];
trajectory(car3, waypoints, speed, waittime);

car4 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [77.82 -76.03 0.2], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car4');
waypoints = [77.82 -76.03 0.2;
    77.49 -55.67 0.18;
    77.3 -32.67 0.18;
    77.12 -17.23 0.18;
    76.4 22.1 0.2;
    76.14 37.16 0.18;
    75.32 89.02 0.18;
    75.17 99.47 0.18;
    74.52 104.58 0.18;
    73.24 107.31 0.18;
    71.45 108.93 0.18;
    68.89 110.01 0.18;
    65.89 110.21 0.18;
    63.63 110.41 0.18;
    54.18 110.23 0.18;
    25 110.2 0.2;
    6.7 110.1 0.18;
    -38.2 110.3 0.2;
    -68.9 110.2 0.2;
    -98.5 110.2 0.2;
    -104.7 109.6 0.2;
    -107.2 109.3 0.2;
    -109.3 108.7 0.2;
    -111.3 107.2 0.2;
    -112.8 104.9 0.2;
    -112.9 100.8 0.2;
    -113.1 93.8 0.2;
    -113 87.8 0.2;
    -112.5 57.7 0.2;
    -112.4 43.3 0.2;
    -112.3 12.4 0.2;
    -112.2 4.8 0.2;
    -108.9 0.4 0.2;
    -104.4 -1.9 0.2;
    -97 -2.3 0.2;
    -69.4 -2.6 0.2;
    -41.6 -2.5 0.2;
    -40.04 -2.51 0.18];
speed = [40;40;40;40;40;40;40;40;40;40;40;40;40;40;40;40;50;50;50;50;50;50;50;50;50;50;50;50;40;40;40;40;40;40;40;40;40;40];
waittime = [0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];
trajectory(car4, waypoints, speed, waittime);

car5 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [80.96 -68.65 0.18], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car5');
waypoints = [80.96 -68.65 0.18;
    80.6 -43.8 0.2;
    80.2 -24.1 0.2;
    80.19 -16.29 0.18;
    79.6 15.3 0.2;
    79.4 25.3 0.2;
    78.8 67.5 0.2;
    78.3 91.4 0.2;
    78.29 93.14 0.18];
speed = [30;30;20;20;20;20;20;20;0];
waittime = [0;0;0;0;0;0;0;0;120];
trajectory(car5, waypoints, speed, waittime);

pedestrian = actor(scenario, ...
    'ClassID', 4, ...
    'Length', 0.24, ...
    'Width', 0.45, ...
    'Height', 1.7, ...
    'Position', [58.1 7.6 0.2], ...
    'RCSPattern', [-8 -8;-8 -8], ...
    'Mesh', driving.scenario.pedestrianMesh, ...
    'Name', 'Pedestrian');
waypoints = [58.1 7.6 0.2;
    54.53 7.66 0.18;
    48.58 7.83 0.18;
    41.98 7.77 0.18;
    -7 7.6 0.2];
speed = [1.5;1.5;1.5;1.5;1.5];
trajectory(pedestrian, waypoints, speed);

pedestrian1 = actor(scenario, ...
    'ClassID', 4, ...
    'Length', 0.24, ...
    'Width', 0.45, ...
    'Height', 1.7, ...
    'Position', [40.3298082475085 7.72603144413588 0.18], ...
    'RCSPattern', [-8 -8;-8 -8], ...
    'Mesh', driving.scenario.pedestrianMesh, ...
    'Name', 'Pedestrian1');
waypoints = [40.31 6.96 0.18;
    53.22 7.14 0.18;
    59.16 7.01 0.18];
speed = [1.5;1.5;1.5];
trajectory(pedestrian1, waypoints, speed);

pedestrian2 = actor(scenario, ...
    'ClassID', 4, ...
    'Length', 0.24, ...
    'Width', 0.45, ...
    'Height', 1.7, ...
    'Position', [42.52 8.47 0.2], ...
    'RCSPattern', [-8 -8;-8 -8], ...
    'Mesh', driving.scenario.pedestrianMesh, ...
    'Name', 'Pedestrian2');
waypoints = [42.52 8.47 0.2;
    41.09 8.22 0.18];
speed = [1.5;0];
waittime = [0;120];
trajectory(pedestrian2, waypoints, speed, waittime);

pedestrian3 = actor(scenario, ...
    'ClassID', 4, ...
    'Length', 0.24, ...
    'Width', 0.45, ...
    'Height', 1.7, ...
    'Position', [-2.11 8.34 0.2], ...
    'RCSPattern', [-8 -8;-8 -8], ...
    'Mesh', driving.scenario.pedestrianMesh, ...
    'Name', 'Pedestrian3');
waypoints = [-2.11 8.34 0.2;
    14.29 8.12 0.18;
    40.78 8.15 0.18];
speed = [1.5;1.5;0];
waittime = [0;0;120];
trajectory(pedestrian3, waypoints, speed, waittime);

