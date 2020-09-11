FachbereichInformatikderUniversit(cid:127)atHamburg

Vogt-K(cid:127)olln-Str.30,D-22527Hamburg/Germany

CGPro{aPROLOGImplementation

ofConceptualGraphs

HeikePetermann

LutzEuler

UniversityofHamburg

ComputerScienceDepartment

NaturalLanguageSystemsDivision

peterman@informatik.uni-hamburg.de

lutz.euler@pink.de

KalinaBontcheva

BulgarianAcademyofSciences

LinguisticModellingLaboratory

kalina@sirma.bg

FBI{HH{M{251/95

October1995

Abstract

Zusammenfassung

- Naturallanguageprocessingrequirese(cid:14)cientandpowerfultoolsforrepresentingandprocess-

- ingknowledge.ThispaperintroducesthesystemCGProwhichimplementstheConceptual

- Graphs(CG)formalism.CGsarealogic-basedformalismdevelopedbyJohnF.Sowaonthe

- basisofCharlesS.Peirce'sexistentialgraphsandsemanticnetworks.Conceptualstructures

- provedtoberatherconvenientasasemanticrepresentationfornaturallanguage.CGProis

- ane(cid:14)cientandpowerfulimplementationofaConceptualGraphsrepresentationinProlog

- andprovidesalltheoperationswhicharemostusefulfornaturallanguageprocessing.This

- paperintroducesthefunctionalityofCGProanddescribesthemotivationfordesigndecisions

- aswell.

- DieVerarbeitungnat(cid:127)urlicherSpracheerfordertleistungsf(cid:127)ahigeWerkzeugezurRepr(cid:127)asentation

- undVerarbeitungvonWissen.IndiesemPapierwirddasSystemCGProvorgestellt,dasden

- FormalimusderConceptualGraphs(CGs)implementiert.CGswurdenvonJohnF.Sowa

- aufderGrundlagederExistenzgraphenvonCharlesS.Peirceentwickelt.ConceptualGraphs

- eignensichbesondersgutzursemantischenRepr(cid:127)asentationnat(cid:127)urlicherSprache.CGProre-

- alisierteinee(cid:14)zienteundm(cid:127)achtigeRepr(cid:127)asentationvonCGsinPrologundlieferteineImple-

- mentierungderf(cid:127)urdiemaschinelleSprachverarbeitungwichtigstenOperationen.Indiesem

- PapierwirdsowohldieFunktionalt(cid:127)atvonCGProvorgestelltalsauchdieMotivationder

- Entwurfsentscheidungendargelegt.

- Contents

- 1Introduction

- 2RepresentingConceptualGraphsinPROLOG

2.1Graphrepresentation................................

2.2RepresentationoftheConcept'sReferentField.................

2.3RepresentationofIndividuals...........................

2.4TypeDe(cid:12)nitions

..................................

2.5RelationDe(cid:12)nitions

................................

2.6TypeHierarchy...................................

2.7AttributeLists

...................................

2.8OtherPrologRepresentations...........................

2.8.1RepresentingConceptualGraphsastriples

...............

2.8.2RepresentingConceptualGraphsasConceptandRelationlists....

- 3ImplementationofsomeoperationsonCGs

3.1Overview......................................

3.2GeneralConventions................................

3.2.1ProgrammingConventions.........................

3.2.2FormatofthePredicateDescriptions...................

3.3Concepts,Graphs,Types,IndividualsandReferentsasAbstractDataTypes

3.3.1Concepts

..................................

3.3.2Graphs

...................................

3.3.3Types....................................

3.3.4

Individuals

.................................

3.3.5Referents

..................................

3.3.6Miscellaneous................................

3.4Thefourcanonicalformationrules........................

3.5Match,ProjectionandMaximalJoin.......................

3.6TypeandRelationExpansion/Contraction1...................

- 4ServiceFeatures

...................................

4.1AttributeLists

4.2InitializingandSavingtheKnowledgeBase...................

4.2.1Loading,SavingandRestoringtheKnowledgeBase

..........

4.2.2ParsingConceptualGraphsInLinearNotation.............

- 5Conclusion

- 1Introduction

- ThispaperdescribesindetailthePrologrepresentationofConceptualGraphs(CGs)which

- wasusedforCGProandallbasicCGoperations.Withtheintroducedimplementationwe

- aimedatsolvingtheproblemsassociatedwithrepresentingcontextsandn-adicrelationsof

- otherexistingsystems.

- First,weintroduceourrepresentationofgraphs,referent(cid:12)elds,individualsandlambdaab-

- stractions.Afterwards,wecompareittootherexistingPrologrepresentations.Section3

- containsadescriptionofpredicatesimplementingbasicaccessfunctionsforthedatastruc-

- turesde(cid:12)nedintheprevioussection.Furthermoreweoutlinetheimplementationofthe

- "real\CGoperations{copy,restrict,join,simplify,maximaljoin,projection,andaspecial

- "extended\projectionalgorithm.

- Specialattentionwaspaidtotherepresentationofthereferent(cid:12)eld.Wehavechosenfeature

- structuresbecausetheycanbehandledandcomparedeasily.Thereforeweareabletoobtain

- theresultingreferent(cid:12)eldofajoin-operationbysimpleuni(cid:12)cationofthefeaturestructures.

- WithCGPro,wesatisfytheneedsoftwoapplicationprojects{aprojectforknowledge

- acquisitionfromnaturallanguagetextsandaGerman-BulgarianMachineAidedTranslation

- project2.

2\DB-MAT",fundedbyVolkswagenFoundationforthreeyears(7/1992-6/1995).

![140292933514832](images/140292933514832)

- 2RepresentingConceptualGraphsinPROLOG

- 2.1Graphrepresentation

- Withourrepresentation,wewanttoful(cid:12)llthepostulatesconcerningfeaturesofagoodCG

- representationgivenin(SowaandWay1986):

(cid:15)connectivity(traversetheentiregraphstartingfromaconcept)

(cid:15)generality(adequaterepresentationofn-adicrelationsandseveralarcspointingtoorfromaconcept)

(cid:15)nopriviledgednodes(eachconceptcanbeahead)

(cid:15)canonicalformationrules(copy,restrict,join,simplify),whicharee(cid:14)cientlyimple-mentedfortheselectedrepresentation

- Allknownandavailablerepresentations(seesection2.8)lackatleastoneofthesefeatures.

- Therefore,weproposethefollowingrepresentationsatisfyingallpointsmentionedabove:

cg(GraphID,RelationList).

cgc(ConceptID,ContextFlag,ConceptName,ReferentField,AnnotationField).

RelationList

::=[cgr(RelName,ArgList,Annotation),...]

ArgList

::=[ConceptID,...]

ContextFlag

::=normaljspecial.

ConceptName

::=SpecialnamejIdenti(cid:12)er.

Specialname

::=contextjnegcontextjsituationjstatementjproposition.

- Thebasicbuildingblocksinthisrepresentationaregraphsandconcepts.Botharerepresented

- asfacts,namelycg/2(\ConceptualGraph")andcgc/5(\ConceptualGraphConcept").

- Everygraphandconcepthasauniqueidenti(cid:12)er(Id).Relationsbetweenconceptsdonot

- haveidenti(cid:12)ersandoccuronlyastermsincg/2facts.

- GraphIDandConceptIDareuniqueidenti(cid:12)ersforallgraphsorconcepts.Eventhough

- therepresentationisunambiguosconcerningthekindofidenti(cid:12)ersateachargumentplace,

- itiseasiertohandleonlyonesortofidenti(cid:12)ersforGraphIDsandConceptIDs.

- ArgListisanorderedlistofconcepts,wherethenumberofthearccorrespondstothe

- concept'splaceinthislist.Forann-adicrelation,thearcsarenumberedfrom1ton,and

- theoutgoingarcisthelastone.

![140292932991568](images/140292932991568)

![140292932638096](images/140292932638096)

![140292932991952](images/140292932991952)

![140292932665488](images/140292932665488)

![140292932666512](images/140292932666512)

- Sowadistinguishesbetweensimpleandcompoundgraphs.Simplegraphsarethosewithout

- nestedcontextsandlinesofidentity3.Inthiscase,theRelationListcontainsthelistofthe

- relationsofthesimplegraph,or,ifthegraphconsistsofonlyoneconceptandthusofno

- relation,aone-elementlistwiththespecialrelationnamenorel.Inthelattercase,ArgList

- isalistofonlyoneelement.

- Acompoundgraphconsistsofoneormore`toplevel'simplegraphsthatmaycontainnested

- graphs.Thesetoplevelgraphsneednotbeconnecteddirectly,butinthiscasetheymust

- containnestedgraphsthatareconnectedbyalineofidentity.

Inacompoundgraphthe- RelationListcontainsthelistofalloftherelationsofthetoplevelgraphs.Itisnotdis-

- tinguishedwhichtoplevelgrapharelationbelongsto.Eachoftherelationsmayagainbea

- norelrelationifthecorrespondinggraphconsistsofonlyoneconcept.

- Graphnestingisimplementedasfollows:Acontextisestablishedasaspecialkindofconcept

- whosereferent(cid:12)eldcontainsalistoftheIdsofthenestedgraphs.

- Coreferentconceptsinagraph(i.e.thosethatsharethesamevariableinthelinearformor

- thosethatbelongtothesamelineofidentity)arerepresentedinternallyasoneconcept.Asa

- consequenceofthisaconceptcanoccurinseveralcontextsatonceaslongasthesecontexts

- belongtothesame(compound)graph.

- Conceptsarerepresentedas5-Tupels.ContextFlagisa(cid:13)agwhichissetiftheconceptis

- ofaspecialtypee.g.context,situation,proposition,andsoon.Inthiscase,ContextFlag

- hasthevaluespecial,otherwiseitisnormal.ConceptNameisatypenameorthenameof

- aspecialcontext,respectively.FordescriptionoftheReferentField,seesection2.2below.

- SincethepossibleapplicationsoftheAnnotationFieldarenotclearlyde(cid:12)ned,allgiven

- examplescontainemptyannotation(cid:12)elds.

- Anexampleofasimpleconceptualgraphcontainingasituationisgivenin(cid:12)gure1ingraphical

- notation,in(cid:12)gure2inlinearformandin(cid:12)gure3intheinternalrepresentation.

SITUATION:

CHASE(cid:16)(cid:16)(cid:16)(cid:16)(cid:16)(cid:16)(cid:16))(cid:11)(cid:10)

HHHHHj(cid:11)(cid:10)

(cid:8)(cid:9)

-(cid:11)(cid:10)

(cid:8)(cid:9)

(cid:8)(cid:9)

-EVENING

PTIM

AGNT

PTNT

?CAT

?MOUSE

Figure1:Asimpleconceptualgraphwithasituationingraphicalform

3Notethatalineofidentityisonlyawaytoshowconceptequivalencewhenaconceptoccursinmultiple- contextsandthusisneverneededforsimplegraphs.4

![140292931047824](images/140292931047824)

![140292931049680](images/140292931049680)

![140292931050512](images/140292931050512)

![140292931050768](images/140292931050768)

![140292931051280](images/140292931051280)

![140292931152272](images/140292931152272)

![140292931151504](images/140292931151504)

![140292931082320](images/140292931082320)

![140292931113488](images/140292931113488)

![140292931150096](images/140292931150096)

![140292931151760](images/140292931151760)

![140292931150416](images/140292931150416)

![140292931150864](images/140292931150864)

![140292931081232](images/140292931081232)

![140292931081680](images/140292931081680)

![140292931083664](images/140292931083664)

![140292931084112](images/140292931084112)

![140292931151248](images/140292931151248)

![140292931082064](images/140292931082064)

![140292931113232](images/140292931113232)

![140292931152528](images/140292931152528)

![140292931152784](images/140292931152784)

![140292931153424](images/140292931153424)

![140292931113744](images/140292931113744)

![140292931115408](images/140292931115408)

![140292931114256](images/140292931114256)

![140292931115664](images/140292931115664)

![140292931114512](images/140292931114512)

![140292931114832](images/140292931114832)

![140292931115920](images/140292931115920)

![140292931116176](images/140292931116176)

![140292931115216](images/140292931115216)

![140292931116688](images/140292931116688)

![140292931049360](images/140292931049360)

![140292931116880](images/140292931116880)

![140292931149904](images/140292931149904)

![140292931183056](images/140292931183056)

![140292930805648](images/140292930805648)

[SITUATION:[CAT]<-(AGNT)<-[CHASE]->(PTNT)->[MOUSE]]

->(PTIM)->[EVENING].

Figure2:Thesamesimpleconceptualgraphinlinearform

cg(513,[cgr(ptim,[25,26],)]).

cg(514,[cgr(agnt,[27,28],),cgr(ptnt,[27,29],)]).

cgc(25,special,situation,[514],).

cgc(26,normal,evening,[fs(num,sing)],).

cgc(27,normal,chase,[fs(num,sing)],).

cgc(28,normal,cat,[fs(num,sing)],).

cgc(29,normal,mouse,[fs(num,sing)],).

Figure3:Thegivensimpleconceptualgraphinourrepresentation

- 2.2RepresentationoftheConcept'sReferentField

- Inthebasicconceptualgraphnotationonlythreekindsofreferent(cid:12)eldsarepermitted{

- generic(existential),individualmarker,andliteral.Measures,sets,names,andquanti(cid:12)ers

- areextendedreferents,i.e.theyaretheresultofsomecontractionoperation.Inoursystem

- wewanttosupportalltheseextendedreferents,especiallythefourkindsofsetreferents{

- collective,distributive,cumulativeanddisjunctive(see(Sowa1984,Sowa1992)).Thereforewe

- introducethefollowingrepresentationforthereferent(cid:12)eld.

Table1:ExmaplesoftheConcept'sReferentField

- Referent

NL

Example

Representation

- FieldType

translation

- Generic

[BOOK:*]

[num:sing]

abook

- Individual

lexiconentry

[PERSON:#123]

[num:sing,type:def,refID:123]

- Individual

[PERSON:John]

[num:sing,name:'John']

John

- Individual

[PERSON:John#1]

John

[num:sing,type:def,refID:1,name:'John']

thebook

- De(cid:12)niteref.

[BOOK:#]

[num:sing,type:def]

- Set

JohnandMary

[PERSON:

[num:plural,type:def,

fJohn,Maryg]

name:['John','Mary']]

- PartialSet

John,Mary

[PERSON:

[num:plural,

name:['John','Mary']]

fJohn,Mary,*g]

andothers

- GenericSet

books

[BOOK:f*g]

[num:plural]

- CountedSet

threebooks

[BOOK:f*g@3]

[num:plural,type:meas,quant:3]

- Quanti(cid:12)ers

everybook

[BOOK:every]

[num:sing,quant:every]

[num:sing,type:quest]

[BOOK:?]

- Question

whichbook

- Pluralquest.whichbooks

[BOOK:f*g?]

[num:plural,type:quest]

- Variable

[BOOK:*x]

[quant:lambda]

![140292930834576](images/140292930834576)

![140292930864400](images/140292930864400)

![140292930865296](images/140292930865296)

![140292930896464](images/140292930896464)

![140292930898000](images/140292930898000)

![140292930933072](images/140292930933072)

![140292930934992](images/140292930934992)

![140292930936528](images/140292930936528)

![140292930965008](images/140292930965008)

![140292930476432](images/140292930476432)

![140292930506960](images/140292930506960)

![140292930509584](images/140292930509584)

![140292930897744](images/140292930897744)

![140292930540816](images/140292930540816)

![140292930541136](images/140292930541136)

![140292930350352](images/140292930350352)

![140292930389712](images/140292930389712)

![140292930390032](images/140292930390032)

![140292930390800](images/140292930390800)

![140292930391184](images/140292930391184)

![140292930391952](images/140292930391952)

![140292930421776](images/140292930421776)

![140292930422096](images/140292930422096)

![140292930422928](images/140292930422928)

![140292930423824](images/140292930423824)

![140292930424016](images/140292930424016)

![140292930424208](images/140292930424208)

![140292930424400](images/140292930424400)

![140292930424656](images/140292930424656)

![140292930454096](images/140292930454096)

![140292930454672](images/140292930454672)

![140292930455504](images/140292930455504)

![140292930456336](images/140292930456336)

![140292930456528](images/140292930456528)

![140292930456784](images/140292930456784)

![140292929966288](images/140292929966288)

![140292929967312](images/140292929967312)

![140292929969296](images/140292929969296)

![140292930003472](images/140292930003472)

![140292930003664](images/140292930003664)

![140292930003920](images/140292930003920)

![140292930004816](images/140292930004816)

![140292930005328](images/140292930005328)

![140292930006672](images/140292930006672)

![140292930036880](images/140292930036880)

![140292930037072](images/140292930037072)

![140292930037328](images/140292930037328)

![140292930038224](images/140292930038224)

![140292930038736](images/140292930038736)

![140292930070992](images/140292930070992)

![140292930071760](images/140292930071760)

![140292930071952](images/140292930071952)

![140292930072208](images/140292930072208)

![140292930101904](images/140292930101904)

![140292930102608](images/140292930102608)

![140292930103632](images/140292930103632)

![140292930104912](images/140292930104912)

![140292930105104](images/140292930105104)

![140292930138192](images/140292930138192)

![140292930138640](images/140292930138640)

![140292930139600](images/140292930139600)

![140292930141328](images/140292930141328)

![140292930142096](images/140292930142096)

![140292930171024](images/140292930171024)

![140292930171216](images/140292930171216)

![140292930172304](images/140292930172304)

![140292930172688](images/140292930172688)

![140292930174224](images/140292930174224)

![140292930174416](images/140292930174416)

![140292930174736](images/140292930174736)

![140292929680080](images/140292929680080)

![140292929680912](images/140292929680912)

![140292929681744](images/140292929681744)

![140292929682704](images/140292929682704)

![140292929682896](images/140292929682896)

![140292929683152](images/140292929683152)

![140292929709648](images/140292929709648)

![140292929710032](images/140292929710032)

![140292929711568](images/140292929711568)

![140292929711760](images/140292929711760)

![140292929712016](images/140292929712016)

![140292929741648](images/140292929741648)

![140292929742992](images/140292929742992)

![140292929743440](images/140292929743440)

![140292929744400](images/140292929744400)

![140292929744592](images/140292929744592)

![140292929781840](images/140292929781840)

![140292929782736](images/140292929782736)

![140292929784400](images/140292929784400)

![140292929818768](images/140292929818768)

![140292929820048](images/140292929820048)

![140292929820240](images/140292929820240)

![140292929820560](images/140292929820560)

![140292929821520](images/140292929821520)

![140292929822416](images/140292929822416)

![140292929853264](images/140292929853264)

![140292929853968](images/140292929853968)

![140292929854160](images/140292929854160)

![140292929854416](images/140292929854416)

![140292929855248](images/140292929855248)

![140292929884816](images/140292929884816)

![140292929885840](images/140292929885840)

![140292929887248](images/140292929887248)

![140292929887440](images/140292929887440)

![140292929887696](images/140292929887696)

![140292929921616](images/140292929921616)

![140292929923280](images/140292929923280)

![140292929924688](images/140292929924688)

![140292929430032](images/140292929430032)

![140292929430224](images/140292929430224)

![140292929430544](images/140292929430544)

![140292929431248](images/140292929431248)

![140292929431504](images/140292929431504)

![140292929432976](images/140292929432976)

![140292929454160](images/140292929454160)

- Intable1thereisasummaryofthemostfrequentlyusedkindsofreferent(cid:12)eldstogether

- withanexample,itsnaturallanguagereadingandthecorrespondingrepresentation.4

<Referent>

::="["<RefNumber>[","<RefType>][","<RefQuant>]

[","<RefID>][","<RefName>][","<QuantScope>]"]"

<RefNumber>

::=num":"<ReferentNumber>

<RefType>

::=type":"<ReferentType>

<RefQuant>

::=quant":"<QuantType>

<RefID>

::=refID":"<IndivID>

<RefName>

::=name":"<Marker>

::=scope":"<Scope>

<QuantScope>

<ReferentNumber>::=singjplural

<ReferentType>

::=defjmeasjquest

::=everyjlambda

<QuantType>

<Scope>

::=disjunctjdistjcoljcum

<Marker>

::=<IndName>j<RefSet>

<IndivID>

::=Number

::="'"UpperLetterjSmallLetter..."'"

<IndName>

<RefSet>

::="["<IndName>[","<IndName>]..."]"

Figure4:ABNFgrammarofthereferent(cid:12)eldstructure

- Figure4containsaBNFgrammarspecifyingthepossibleattributesandtheirvalues.

- Thereferent(cid:12)eldwillberepresentedasaProloglistofbinaryterms:

[fs(F1,V1),fs(F2,V2),...]

- Predicatesoperatingonthereferent(cid:12)eldaredescribedinsection3.3.5.

- 2.3RepresentationofIndividuals

- Individualsarerepresentedasternaryrelationsintheknowledgebase:

ind(IndId,Name,Type)

- IndIdmustbeprovidedbytheuserinthereferent(cid:12)eldofconcepts.Nameisthenameofthe

- individualandTypeisatypeofthetypehierarchy.Example:

[CAT:TOM#123]

ind(123,TOM,CAT)

[CAT:TOM#]

isnotanindividualastheuserhasnotde(cid:12)nedanId

- 2.4TypeDe(cid:12)nitions

- Intheconceptualgraphformalismnewconcepttypesareintroducedbytypede(cid:12)nitions.

- Theoperationsactinguponthemaretypeexpansionandtypecontraction.FollowingSowa's

4Mostoftheexamplesaretakenfrom(Sowa1993).6

![140292929669776](images/140292929669776)

![140292929670480](images/140292929670480)

![140292928996176](images/140292928996176)

![140292928996880](images/140292928996880)

![140292928396304](images/140292928396304)

- de(cid:12)nition(Sowa1984,pp.106{112),typede(cid:12)nitionsarerepresentedasbinaryrelations:

typedef(TypeName,lambda(VarList,GraphId))

- Thelinearformoftypede(cid:12)nitionswillbeinterpretedbythelinearformparser(seesec-

- tion4.2.2):TypeDef::="type"<TypeName>"("<VarList>")""is"<Graph>

- typedef/2andGraphwillbeassertedintheknowledgebaseanditsGraphIdwillbeincluded

- inthetypedef/2relation.VarListisaregularProloglistofallargumentsofthede(cid:12)ned

- type.Example:typePOSITIVE(x)is[NUMBER:*x]->(">")->[NUMBER:0]

- willbeassertedintheknowledgebaseinthefollowingrelations:

cg(1,[cgr("<",[2,3])])

cgc(2,normal,'NUMBER',[quant:lambda],_)

cgc(3,normal,'NUMBER',[type:meas,name:0],_)

typedef('POSITIVE',lambda([x],1))

- Notethattypede(cid:12)nitionsdonotexpandthetypehierarchyautomatically.Theuseris

- responsibleforprovidingthecorrespondingisa/2relations.

- 2.5RelationDe(cid:12)nitions

- Relationde(cid:12)nitionsaresupportedsimilarlytotypede(cid:12)nitions.Theywillberepresentedin

- theknowledgebaseasbinaryrelations:

reldef(RelName,lambda(VarList,GraphId))

- Thisrelationisaresultofparsingthefollowinglinearform:

RelDef::="relation"<RelName>"("<VarList>")""is"<Graph>

- reldef/2andGraphareassertedintotheknowledgebasebytheparser.

- 2.6TypeHierarchy

- Thetypehierarchyisrepresentedasbinaryrelations:

isa(SubType,SuperType)

- Itcanbeloadedfroma(cid:12)lewithloadKBase/2.isa/2relationsarenotparsedbythelinear

- formparserbutareconsultedbythePrologsystem.

- 2.7AttributeLists

- Itisveryimportantfortheuserdevelopingarealworldapplicationthatthereisapossibility

- fororganizinggraphsingroups.Forthisreason,thesystemsupportsamechanismformarking

- graphswithattributes.Someusefulattributesmightbe:

'canonical','typedefs','reldefs',- 'temp'.Forthispurpose,attributelistsareprovided:

attrList(Name,GraphId)

- Inprincipletheusershouldtakecareofmanagingtheselists.Thesystemprovidessome

- predicatesforthis(seesection4.1).Alloperationschangingtheknowledgebasework

- withthecurrentattributelist.ThisvariablecanbehandledwithsetCurAttrList/1and

- getCurAttrList/1.

- 2.8OtherPrologRepresentations

- 2.8.1RepresentingConceptualGraphsastriples

- Wewouldliketointroducetherepresentationadoptedin(HookandAhmad1992).

- Eachconceptualgraphisdecomposedintocanonicalgraphs5consistingoftwoconceptslinked

- byarelation.Theinvestigationmadebytheauthorsof(HookandAhmad1992)provedthat

- allrelationsinaTerminologyKnowledgeBase(TKB)arebinary,i.e.connectingexactly

- twoconcepts.TheirconceptualgraphTKBconsistsofasetofcanonicalgraphsandatype

- hierarchy.Allcanonicalgraphsarestoredas:

iscanonicalgraph('emissioncontroldevice':type:'catalyticconverter').

- EachconceptualgraphisrepresentedasaProloglistoftriples:

concept:relation:concept

- In(HookandAhmad1992)thetypehierarchyisgeneralizedtoasetofconceptualgraphs

- containingthetyperelation.Duetothefactthattheinheritancemechanismdependsonthe

- typehierarchy,thetyperelationisofparticularimportance.

- Thisrepresentationhandlesverysimpleconceptualgraphs.Theyaresuitablemainlyfor

- knowledgebasesinveryspeci(cid:12)cdomains,whereallrelationsarebinary.Anotherproblem

- ofthatapproachistheredundantinformation.Eachconceptparticipatinginmorethanone

- relationoccursmorethanonceinthelist.Whenspecializationisperformed,thelistshould

- besearchedcompletelyforalloccurencesofacertainconcept(theonetoberestricted).

5Heretheterm`canonical'isusedinitsgeneralmeaning.Thusthese`canonicalgraphs'arenotSowa's- `canonicalgraphs',butsimplyanormalizedformofagraphrepresentation.

![140292926801872](images/140292926801872)

![140292926803408](images/140292926803408)

![140292926680080](images/140292926680080)

- 2.8.2RepresentingConceptualGraphsasConceptandRelationlists

- (SowaandWay1986)proposedamorestructuredrepresentation:

- cg(<ConceptList>,<RelationList>)

- ConceptList:=[cgc(<ConceptNo>,<ConceptName>,<Referent>),...]

- RelationList:=[cgr(<ConceptNo>,<RelationName>,<ConceptNo>),...]

- Althoughonegraphisrepresentedasonlyonedatastructure,e.g.graphtraversingwillbe

- easierthanin(HookandAhmad1992),wedoencounterthefollowingproblems:

1.Graphreferents:[PROPOSITION:Graph]istransformedinto

[PROPOSITION]->(STMT)->Graph

ThesameholdsforSTATE,SITUATIONandCONTEXT.

2.3-adicrelationrepresentation.Let'stakeBETWforexample.Usingtheaboverepre-sentation,weareforcedtohave2or3entriesintheRelationListforonerelation.Apartfromthat,wedonothaveaclearlyde(cid:12)nedorderoftherelationarcs,whichcontradictstothefactthatthearcsshouldbenumberedforalln-adicrelations(n(cid:21)3).

3.Thereisredundantinformationinthecgc-structure.Ifwehavethesameconceptsindi(cid:11)erentCGsthenallthatinformationisincludedineverycgc-structure.Representingallconceptsintoaseparateconcepttableavoidsthiskindofredundancy.Additionally,garbagecollectiontechniquescanbeappliedinordertoabandonallconceptsnotusedintheknowledgebase.

- 3ImplementationofsomeoperationsonCGs

- Althoughourinternalrepresentationhandlescomplexgraphsproperly,someoftheoperations

- areimplementedonlyforsimplegraphswithsituations,propositions,andstatements.Our

- furthergoalwillbetoextendouralgorithmsforcomplexgraphs.Butneverthelessthesetof

- operationshandledbythesystemiscompleteandwillremainunchanged.

- 3.1Overview

- ThefollowingsectionscontainastructureddescriptionofourPrologimplementationwith

- predicatenames,argumentsandbriefexplanations.Firstweintroducesomeabstractdata

- types-concepts(see3.3.1),conceptualgraphs(see3.3.2),types(see3.3.3),individuals(see

- 3.3.4)andreferents(see3.3.5).AsetofstandardoperationsbelongstoallADTs{contructors,

- destructors,accessors,copyandequalitytest.Additionally,eachADThassomespeci(cid:12)c

- operations(eg.subConcept,minComSuperType),andtheirsemanticsistakenfromtheCG

- theory.6Sincewerelyonthereader'sknowledgeofconceptualgraphs,wehaveommitedall

- functionalitydetailsofimplementedoperations.

- TheADTscompriseabasiswhichthefourcanonicalformationrulesandsomeotherCG

- operationsarebuiltupon.AllCGoperationshavebothdestructiveandnon-destructive

- versions.Section3.4containsthede(cid:12)nitionsofcopy,restrict,simplifyandjoin.Match,

- projectionandmaximaljoinareintroducedinsection3.5.Apartfromthestandardprojection

- algorithmwehaveimplementedanextendedprojection(see3.5)thathasproventoberather

- usefulforsomeNaturalLanguage(NL)applications.Typeandrelationexpansion/contraction

- operations(see3.6)enabletheactiveuseofnewtypesandrelations.

- Inordertodistinguishbetweenvariouskindsofgraphs,wehaveintroducedattributelists

- (see4.1).Theyareusedtogroupthegraphsaccordingtotheirsemantics(eg.canonical,

- situations,typede(cid:12)nitions,etc.).Thesystemalwaysdealswiththecurrentattributelist.

- Finally,weintroducesomepredicatesforhandlingtheKnowledgeBase(KB)-load,loadwith

- convert,saveandrestore(see4.2.1).Forinitializingtheknowledgebase,weimplemented

- alinearnotationparserwhichconverts(cid:12)lescontaininggraphsinlinearnotationintothe

- internalrepresentation(see4.2.2).

- 3.2GeneralConventions

- 3.2.1ProgrammingConventions

- Concerninguppercasevs.lowercaseandtheuseofunderscores,predicateandvariablenames

- arerepresentedasfollows:predicateName(VarName,...).Underscoresareneverused

6Forashortintroductionsee(Sowa1992).

![140292924179344](images/140292924179344)

- exceptofcourseasidenti(cid:12)erfortheanonymousvariable.

- Allpredicatesobeythefollowingrulesconcerningtheorderofarguments:

(cid:15)Relationalbinarypredicateshavetheirargumentsintheorderthatrendersidentifyingtherelationasanin(cid:12)xnaturally.Example:isa(V1,V2)meansV1isaV2.

(cid:15)Datastructureaccessorshavetheoutputargumentinthelastposition.

(cid:15)Functionalpredicateshavetheoutputargumentinthelastposition.join(G1,G2,G3)joinsG1andG2toyieldG3.

(cid:15)Destructiveoperationshavetheinput/outputargumentinthe(cid:12)rstposition.join(G1,G2)joinsG1withG2andreturnsthemodi(cid:12)edG1.

- 3.2.2FormatofthePredicateDescriptions

- Below,thepredicatesaredescribedinthefollowingformat:

- predicate(Argument1,...)

- Descriptiontext

- Arguments:

Argument1TypeofArgument1

...

...

- Inthe(cid:12)rstlinetheargument'snamesareprecededbyoneofthreemodespeci(cid:12)ers:+means

- theargumentmustbeinstantiated,-meansitmustbefree,and?meansitcanbeanything.

- NotethatIdargumentsofobjectsthataremodi(cid:12)edbytheoperationhavemode+because

- theIdisnotchanged.

- 3.3Concepts,Graphs,Types,IndividualsandReferentsasAbstractData

Types

- Generally,theoperationsoncompoundobjectscompriseconstructors(thatbuildanewobject

- fromitsparts),destructors,accessors(thatreturnthepartsofagivenobject),acopyoper-

- ationandanequalitytest.ThenameoftheconstructorfordatatypeobjectisnewObject,of

- thedestructordeleteObjectandoftheaccessorsobjectSlot.Thecopyoperationisnamed

- copyObjectandtheequalitytestequalObject.

- AlsogenerallyallobjectsarereferredtointernallybytheirIds,e.g.whenbeingpassedas

- arguments.Thisholdsforgraphs,conceptsandindividals.Someoperationsonthesedata

- structuresworkdestructively.ThismeansthatthedatastructurepointedtobytheIdchanges

- whiletheIdoftheinputandtheresultisthesame.Anondestructiveoperationreturnsa

- newIdforthesekindsofobjects.

- Alloperationsongraphstakecareofcreatingnewconceptswherenecessarytoensurethat

- anyconceptiscontainedinonegraphatmost.Forinstancethedestructive\join"operation

- {thatmodi(cid:12)esoneoftheinputgraphs{copiestheotherinputgraphsothatonlynew

- conceptsarejoinedtothe(cid:12)rstgraph.

- 3.3.1Concepts

- Conceptsarerepresentedas5-tupels:

cgc(ConceptID,ContextFlag,ConceptName,ReferentField,AnnotationField)- newConcept(+Category,+Type,?Referent,

?Annotation,?Concept)

- Createsanewconceptgivenitscategory,type,referentandannotation.ReturnstheIdof

- thenewconcept.ForspecialconceptsthereferentisagraphId.IfConceptisgrounditis

- usedastheIdoftheconcept,elseanewIdisacquiredandreturned.

- Arguments:

Category

normalorspecial

Type

Atom

Referent

TermorlistofgraphIds

AnnotationTermor

Concept

ConceptId

- deleteConcept(+Concept)

- DeletestheConcept.Theuserisresponsibleforassuringthattherearenoreferencestothis

- conceptleft.

- Arguments:

ConceptConceptId

![140292923091984](images/140292923091984)

- conceptSlots(+Concept,-Category,-Type,-Referent,-Annotation)

- GetsthepartsofConcept.

- Arguments:

Concept

ConceptId

Category

normalorspecial

Type

Atom

Referent

TermorlistofgraphIds

AnnotationTermor

- copyConcept(+ConceptIn,-ConceptOut)

- Copyaconcept.Incasethisisaspecialconcept,thecontentsofthereferent(cid:12)eldarecopied

- recursively.ReturnstheIdofthecopy.

- Arguments:

ConceptIn

ConceptId

ConceptOutConceptId

- equalConcept(+Concept1,+Concept2)

- Succeedsifthetwoconceptsareequal.Thisisthecaseiftheirtypesandreferentsareequal.

- Incaseofspecialconceptsthenestedgraphsarecomparedrecursively.

- Arguments:

Concept1ConceptId

Concept2ConceptId

- subConcept(+SubConcept,+SuperConcept)

- SucceedsifSubConceptisasubconceptofSuperConcept.

- Arguments:

SubConcept

ConceptId

SuperConceptConceptId

- conceptCategory(+Concept,-Category)

- Getthecategoryofaconcept.

- Arguments:

ConceptConceptId

Categorynormalorspecial

![140292922827152](images/140292922827152)

- conceptType(+Concept,-Type)

- Getthetype(fromthehierarchy)ofaconcept.

- Arguments:

ConceptConceptId

Type

Atom

- conceptReferent(+Concept,-Referent)

- Getthereferent(cid:12)eldofaconcept.

- Arguments:

ConceptConceptId

ReferentTermorlistofgraphIds

- 3.3.2Graphs

- Graphsarerepresentedasbinaryprologfacts:

cg(GraphID,RelationList)

- newGraph(+Relations,?Graph)

- CreateanewgraphconsistingonlyoftheRelations.Thenewgraphisaddedtothecurrent

- attributelist.IfGraphisgrounditisusedastheIdofthegraph,elseanewIdisacquired

- andreturned.

- Arguments:

RelationsListoftermscgr/3

Graph

GraphId

- newGraph(?Graph)

- Createanewemptygraph.Thenewgraphisputonthecurrentattributelist.

- Arguments:

GraphGraphId

- deleteGraph(+Graph)

- DeletetheGraph.Thisdoesnotdeletetheconceptscontainedinthegraph.Theuseris

- responsibletoassurethattherearenomorereferencestothegraph.Thegraphisremoved

- fromallattributelistsitison.

- Arguments:

GraphGraphId

- modifyGraphRelations(+Graph,+NewRelations)

- ModifytheGraphtoconsistoftherelationsinthelistNewRelations.

- Arguments:

Graph

GraphId

RelationsListoftermscgr/3

- graphRelations(+Graph,-Relations)

- Getthelistofrelationsofagraph.

- Arguments:

GraphId

Graph

RelationsListofrelations,i.e.termswithfunctorcgr

- addGraphRelation(+Graph,+RelName,+Concepts,+Annotation)

- Insertn-aryrelationwithnameRelNameintheGraphonthenconceptsfromthelist

- Concepts.Theconceptsareorderedandthelastonebelongstotheoutgoingarc.Annotate

- therelationwithAnnotation.Thegraphismodi(cid:12)ed.

- Arguments:

GraphId

Graph

RelName

Atom

Concepts

ListofConceptIds

AnnotationAtom

- deleteGraphRelation(+Graph,+RelName,+Concepts)

- DeletetherelationwithnameRelNameconnectingtheConceptsfromtheGraph.Failsif

- thereisnosuchrelation.

- Arguments:

GraphId

Graph

RelNameAtom

ConceptsListofConceptIds

- copyGraph(+GraphIn,-GraphOut)

- Copyagraph.

- Arguments:

GraphInGraphId

GraphOutGraphId

- copyGraph(+GraphOrig,-GraphCopy,-MapOut)

- CopyGraphOrigandrecursivelygraphsnestedinityieldingGraphCopy.Themappingof

- oldconceptsandgraphsontothenewonesisreturnedinMapOut.Thiscanbeusedtotrace

- conceptsandsubgraphsthroughtheprocessofcopying.

- Arguments:

GraphOrigGraphId

GraphCopyGraphId

MapOut

Termmap/2

- ThegraphcopyoperationisactuallyalreadyoneofSowa'sCGoperations.Itisnevertheless

- de(cid:12)nedherebecauseitisneededforcompletenessoftheADT.

- equalGraph(+Graph1,+Graph2)

- Succeedsifthetwographsareequal.Thisischeckedrecursivelyforallnestedsubgraphs,

- too.Arguments:

Graph1GraphId

Graph2GraphId

- graphConcept(+Graph,-Concept)

- GivenGraph,succeedsonceforeachConceptthatoccursinthegraph.IfGraphcontains

- nestedgraphs,theconceptsinthesegraphsareneglected.

- Arguments:

GraphGraphId

ConceptConceptId

- AutomaticManagementofAttributeLists

- ThenewGraphoperationputsthenewgraphonthecurrentattributelist.Someoperations,

- e.g.join,usetemporarygraphsthataredeletedinthecourseoftheoperation.Thisis

- accomplishedbyusingthepredicatedeleteGraphwhichbesidesdeletingthegraphalso

- removesitfromallattributelists.Asanadditionalwaytodeletegraphsthereisthepredicate

- deleteAllGraphsthatdeletesallgraphsthatareonagivenattributelistandclearsthislist.

- Thiswaytheimplementationtakescarethatnoattributelistcontainsareferencetoadeleted

- graphandthateverygraphisatleastononeattributelist.

- 3.3.3Types

- Thetypehierarchyisrepresentedas:isa(SubType,SuperType)

- typelist(-Types)

- Returnsalistofalltypes.Theseincludetop,bottomandthespecialtypeslikecontextetc.

- Thelististopologicallysortedinascendingorder.

- Arguments:

TypesListoftypes

`Undirected'meanstheycanbe- TheseoperationsareundirectedbinaryPrologrelations.

- usedbothforcheckingandforgeneration.

- equalType(+Type1,+Type2)

- SucceedsifType1andType2areofthesametypename.

- Arguments:

Type1Type

Type2Type

- isa(?SubType,?SuperType)

- SucceedsifSubTypeisanimmediatesubtypeofSuperType.

- Arguments:

Type

SubType

SuperTypeType

- subType(?SubType,?SuperType)

- SucceedsifSubTypeisasubtypeofSuperType.

- Arguments:

SubType

Type

SuperTypeType

- Ternaryrelations(directed):

- subType(+SubType,+SuperType,-List)

- SucceedsifSubTypeisasubtypeofSuperType.Listwillbeuni(cid:12)edwiththepathbetween

- Type1andType2.

- Arguments:

SubType

Type

SuperTypeType

List

ListofTypes

- maxComSubType(+Type1,+Type2,-Type3)

- Type3isthemaximalcommonsubtypeofType1andType2.

- Arguments:

Type1Type

Type2Type

Type3Type

- maxComSubType(+Type1,+Type2,-Type3,-PathList1,-PathList2)

- Type3isthemaximalcommonsubtypeofType1andType2.PathList1willbeuni(cid:12)edwith

- thepathbetweenType1andType3,andPathList2willbeuni(cid:12)edwiththepathbetween

- Type2andType3.

- Arguments:

Type1

Type

Type2

Type

Type3

Type

PathList1ListofTypes

PathList2ListofTypes

- minComSuperType(+Type1,+Type2,-Type3)

- Type3istheminimalcommonsupertypeofType1andType2.

- Arguments:

Type1Type

Type2Type

Type3Type

- minComSuperType(+Type1,+Type2,-Type3,

-PathList1,-PathList2,-PathList3)

- Type3istheminimalcommonsupertypeofType1andType2.PathList1willbeuni(cid:12)edwith

- thepathbetweenType1andType3,PathList2willbeuni(cid:12)edwiththepathbetweenType2

- andType3andPathList3willbeuni(cid:12)edwiththepathbetweenType3anduniv.

- Arguments:

Type1

Type

Type2

Type

Type3

Type

PathList1ListofTypes

PathList2ListofTypes

PathList3ListofTypes

- typeDe(cid:12)nition(+Type,-De(cid:12)nition)

- Returnsthetypede(cid:12)nition(atermlambda/2)oftheType.

- Arguments:

Type

Type

De(cid:12)nitionTypede(cid:12)nition

- 3.3.4Individuals

- Individualsarerepresentedas:

ind(IndId,Name,Type)

- Theconformityrelationmustbede(cid:12)ned.

Ithasatypeandanindividualasarguments.- Thetypeisthesmallestonetheindividualconformsto.Individualsarereferredtobytheir

- Id.Thisisalwaysprovidedbytheuserasanumber{itisneverautomaticallygenerated

- bythesystem.Whenparsingaconceptualgraph,newindividualsoccuringinsideitare

- automaticallyasserted.Additionally,thereisapredicatetoassertthemmanually.

- newIndividual(+Id,+Type,?Name)

- CreateanewIndividual.ArgumentsaretheId,thesmallestconformingtypeandoptionally

- thename.Thenewindividualisasserted.

- Arguments:

Id

Number

TypeType

NameAtomoranonymousvariable

- deleteIndividual(+Individual)

- DeletetheIndividual.Theuserisresponsibleforassuringthattherearenoreferencesto

- theindividualleft.

- Arguments:

Individual

IndividualId

- individualType(+Individual,-Type)

- GetthetypeofanIndividual,i.e.thesmallesttypetheindividualconformsto.

- Arguments:

Individual

IndividualId

Type

Type

- individualName(+Individual,-Name)

- GetthenameofanIndividual.

- Arguments:

Individual

IndividualId

Atomor

Name

- 3.3.5Referents

- Referentsarerepresentedasfeaturestructures(see2.2).

- setRefNumber(+ReferentIn,+Number,-ReferentOut)

- Changesthenum-FeatureinReferentInandreturnstheresultasReferentOut.

- Arguments:

ReferentIn

Referent

Number

Atom

ReferentOutReferent

![140292918162832](images/140292918162832)

- getRefNumber(+Referent,-Number)

- Uni(cid:12)esNumberwiththevalueofthenum-FeatureinReferent.

- Arguments:

ReferentInReferent

Number

Atom

- setRefType(+ReferentIn,+Type,-ReferentOut)

- IftypedoesnotexistasafeatureinReferentIn,thensetRefTypeaddsthefeaturetype

- withvalueTypetoReferentIn.Otherwise,setRefTypechangesthevalueoftypetoType

- inReferentIn.Theresultwillbeuni(cid:12)edwithReferentOut.

- Arguments:

Referent

ReferentIn

Type

Atom

ReferentOutReferent

- getRefType(+Referent,-Type)

- Uni(cid:12)esTypewiththevalueofthetype-FeatureinReferent.

- Arguments:

ReferentInReferent

Type

Atom

- setRefQuant(+ReferentIn,+Quant,-ReferentOut)

- IfquantdoesnotexistasafeatureinReferentIn,thensetRefQuantaddsthefeaturequant

- withvalueQuanttoReferentIn.Otherwise,setRefQuantchangesthevalueofquantto

- QuantinReferentIn.Theresultwillbeuni(cid:12)edwithReferentOut.

- Arguments:

ReferentIn

Referent

Quant

Atom

ReferentOutReferent

- getRefQuant(+Referent,-Quant)

- Uni(cid:12)esQuantwiththevalueofthequant-FeatureinReferent.

- Arguments:

ReferentInReferent

Quant

Atom

- setRefId(+ReferentIn,+Id,-ReferentOut)

- IfrefIDdoesnotexistasafeatureinReferentIn,thensetRefIdaddsthefeaturerefID

- withvalueIdtoReferentIn.Otherwise,setRefIdchangesthevalueofrefIDtoIdin

- ReferentIn.Theresultwillbeuni(cid:12)edwithReferentOut.

- Arguments:

ReferentIn

Referent

Id

Atom

ReferentOutReferent

- getRefId(+Referent,-Id)

- Uni(cid:12)esIdwiththevalueoftherefID-FeatureinReferent.

- Arguments:

ReferentInReferent

Id

Atom

- setRefName(+ReferentIn,+Name,-ReferentOut)

- IfnamedoesnotexistsasafeatureinReferentIn,thensetRefNameaddsthefeaturename

- withvalueNametoReferentIn.Otherwise,setRefNamechangesthevalueofnametoName

- inReferentIn.Theresultwillbeuni(cid:12)edwithReferentOut.

- Arguments:

ReferentIn

Referent

Name

Atom

ReferentOutReferent

- getRefName(+Referent,-Name)

- Uni(cid:12)esNamewiththevalueofthename-FeatureinReferent.

- Arguments:

ReferentInReferent

Name

Atom

- setRefScope(+ReferentIn,+Scope,-ReferentOut)

- IfscopedoesnotexistsasafeatureinReferentIn,thensetRefScopeaddsthefeature

- scopewithvalueScopetoReferentIn.Otherwise,setRefScopechangesthevalueofscope

- toScopeinReferentIn.Theresultwillbeuni(cid:12)edwithReferentOut.

- Arguments:

ReferentIn

Referent

Scope

Atom

ReferentOutReferent

- getRefScope(+Referent,-Scope)

- Uni(cid:12)esScopewiththevalueofthescope-FeatureinReferent.

- Arguments:

ReferentInReferent

Scope

Atom

- equalReferent(+Referent1,+Referent2)

- SucceedsifReferent1andReferent2areequal.

- Arguments:

Referent1Referent

Referent2Referent

- matchReferent(+Referent1,+Referent2,-Referent3)

- Thispredicatewillbeusedinjoin,maximaljoinandprojection.Itmatchesthereferent(cid:12)elds

- ofconcepts.Thefollowingrulesareappliedinthisorder:

1.GiventhatReferent1representsavariablethenitmatcheseverythingiftherestofthereferent(cid:12)eldisunifyablewiththeReferent2.Inthiscase,Referent3istheresultoftheuni(cid:12)cation.Otherwisethepredicatefails.

2.Ifrule1wasnotsuccessfulandReferent1representsaquestion,thenismatchesev-erythingiftherestofthereferent(cid:12)eldisunifyablewithReferent2.Referent3istheresultoftheuni(cid:12)cation.Otherwisethepredicatefails.

3.Ifrule1and2werenotsuccessful,Referent1isgenericorapartialsetandReferent2isoftypemeasure,thenthematchsucceedsifthenumberofelementsofthesetinReferent1islessthanthenumberofelementsinReferent2andthefeaturestructuresareunifyable.

4.Ifnoneoftherulesaboveweresuccessful,thenReferent3istheresultoffeaturestructureuni(cid:12)cationofReferent1andReferent2.

5.ElsetrytosucceedmatchReferent(Referent2,Referent1,Referent3).

- Arguments:

Referent1Referent

Referent2Referent

Referent3Referent

- 3.3.6Miscellaneous

- relationDe(cid:12)nition(+Relation,-De(cid:12)nition)

- Returnstherelationde(cid:12)nition(atermlambda/2)oftheRelation.

- Arguments:

RelationRelation

De(cid:12)nitionRelationde(cid:12)nition

- 3.4Thefourcanonicalformationrules

- copy(+GraphIn,-GraphOut)

- Copyaconceptualgraph.InLPA-PrologthisoperationiscalledcopyCG/2asthereisalready

- asystempredicatecopy/2withdi(cid:11)erentsemantics.Thisisthesameoperationasthe`copy'

- operationofthegraphADT.

- Arguments:

GraphInGraphId

GraphOutGraphId

- Thefollowingoperationsareprovidedintwodi(cid:11)erentversions,onethatmodi(cid:12)esoneofthe

- inputargumentsandonethatdoesnot.Thedestructiveversionsareusefulforavoiding

- excessgarbagegenerationifseveraloperationsareexecutedforagraphinsequence.

- restrict(+Graph,+Concept,+Type,+Referent)

- restrict(+GraphIn,+Concept,+Type,+Referent,-GraphOut)

- Givenagraphandaconceptinit,changethetypeor/andthereferentbyrestrictimgthem

- further.Thisisallowedonlyiftheconformityrelationstillholdsaftertheoperation.Thetype

- mayberestrictedbyreplacingitbyasubtype.Thereferentmayberestrictedbyreplacing

- agenericmarkerbyanindividual,conformingtothe(new)type,orbyfeature-structure

- operations,correspondingtospecialisation.The(cid:12)rstversionmodi(cid:12)esGraph,thesecondone

- returnsthenewGraphOutasitsresult.

- Arguments:

Graph

GraphId

Concept

ConceptId

Type

Type

Referent

Referent

GraphInGraphId

GraphOutGraphId

- join(+Graph1,+Graph2)

- join(+Graph1,+Graph2,-GraphOut)

- join(+Graph1,+Concept1,+Graph2,+Concept2)

- join(+Graph1,+Concept1,+Graph2,+Concept2,

-GraphOut,-ConceptOut)

- ThisjoinsGraph1andGraph2.Thefourversionsdi(cid:11)erintwoaspects,namelywhetherthey

- modifyGraph1ornotandwhethertheconceptsonwhichtojointhegraphsareprovided

- explicitly.Inthe(cid:12)rsttwoversionstheconceptsarenotprovided.Theydeliverallpossible

- joinsonbacktracking.

InthelasttwoversionsConcept1istheconceptinGraph1and- Concept2istheconceptinGraph2onwhichtojointhegraphs.Bothconceptsmustbe

- equal,otherwisethejoinwillfail.Toachieveajoinoncompatibleconceptsthatarenot

- equaltheinputconceptsmustbemadeequalbyrestrictingtheminadvance.Theresulting

- conceptisprovidedinConceptOut.The(cid:12)rstandthirdversionmodifyGraph1andthesecond

- andfourthversionprovidetheresultinanewgraphGraphOut.Graph2isalwayscopiedin

- advanceandnevermodi(cid:12)ed.

- Arguments:

GraphId

Graph1

Graph2

GraphId

GraphOutGraphId

Concept1

ConceptId

Concept2

ConceptId

ConceptOutConceptId

- simplify(+Graph)

- simplify(+GraphIn,-GraphOut)

- Simplifyagraphbydeletingallduplicaterelationsinit.The(cid:12)rstversionmodi(cid:12)esGraph,

- thesecondonereturnsthesimpli(cid:12)edGraphInasGraphOutandleavesGraphInasitwas.

- Arguments:

GraphId

Graph

GraphInGraphId

GraphOutGraphId

- 3.5Match,ProjectionandMaximalJoin

- match(+Graph1,Graph2)

- SucceedsifGraph1isageneralizationofGraph2.Comparingconceptstakesintoaccountthe

- typehierarchyandwillmatchthereferents(comparematchReferent/3.

- Arguments:

Graph1GraphId

Graph2GraphId

- maximalJoin(+Graph1,+Graph2)

- maximalJoin(+Graph1,+Graph2,-Graph3)

- Thesepredicatesrealizethemaximaljoinoperationsforconceptualgraphs.Forthede(cid:12)nition

- referto(Sowa1984,p.104).Thetwoversionsdi(cid:11)erinmodifyingGraph2;maximalJoin/2

- modi(cid:12)esGraph2whichistheresultofthisoperation.Graph2shouldbemorespeci(cid:12)cthan

- Graph1.maximalJoinwilltakeintoaccountthetypehierarchyandwillmatchthereferents

- (comparematchReferent/3).

- Arguments:

Graph1GraphId

Graph2GraphId

Graph3GraphId

- projection(+Graph1,+Graph2,-Graph3)

- Giventwoconceptualgraphs(cid:12)ndtheprojectionofGraph1onGraph2.TheresultingGraph3

- isnotemptyifandonlyifGraph2isaspecializationofGraph1.Theprojectionoperationis

- type,relationandstructurepreserving.Fortherespectivealgorithmsee(Sowa1984,p.99).

- Arguments:

Graph1GraphId

Graph2GraphId

Graph3GraphId

- extendedProjection(+Graph1,+Graph2,-Graph3)

- Graph3istheextendedprojection7ofGraph2(thequerygraph)onGraph1.Themost

- importantfeatureisthatGraph2containsatleastoneuninstantiatedconcept(corresponding

- toaquestionreferent).

InaNLapplicationthisgraphmightbecreatedasasemantic- representationofauser'squestion.Theresultinggraphisobtainedby(cid:12)ndingtheprojection

7Thispredicateisnotyetimplemented.

![140292913459536](images/140292913459536)

- ofGraph2onGraph1andaddingallconceptsdirectlylinkedtoanuninstantiatedconcept

- fromthequerygraph.Letusconsiderthefollowinggraphs:

- Graph1:[CAT]->(ON)->[MAT]->(ATTR)->[RED]

- Graph2:[CAT]->(ON)->[?]

- Theresultofthenormalprojectionalgorithmisjust:

- [CAT]->(ON)->[MAT]

- TheresultoftheextendedprojectionalgorithmisthewholeGraph1.

- Possiblemodi(cid:12)cationofthisalgorithmincludesaparameterforthedepthoftheextension,

- i.e.fordepthnaddallconcepts,beingnrelations'far'fromanuninstantiatedconceptin

- thequerygraph.Thisparametercanbealsodependentontherelationtypesinthequery

- graph.8

- Arguments:

Graph1GraphId

Graph2GraphId

Graph3GraphId

- 3.6TypeandRelationExpansion/Contraction9

- Sincewesupportbothtypeandrelationde(cid:12)nitions(i.e.giveamechanismforde(cid:12)ningnew

- typesandrelations),wealsoprovideexpansionandcontractionoperations.Inourimple-

- mentationwesticktothealgorithmsdescribedin(Sowa1984,pp.107-109,p.115).

Itis- recommendedtoapplytheseoperationsoncanonicalgraphs,sinceSowahasprovedthatthe

- resultisalsoacanonicalgraph(i.e.inthiscasetheoperationsaretruth-preserving).

- AllfouroperationstakeasinputagraphId(thegraphtobeexpanded/contracted),anId

- ofadi(cid:11)erentiagraph(typede(cid:12)nition)orarelatorgraph(relationde(cid:12)nition).Theoutput

- graphisalwaysthelastargument.

8Forsomeotherideasaboutextendingtheprojectionoperationsee(Velardi,Pazienza,andGiovanetti1988).9Thesepredicatesarenotyetimplemented.

![140292912683664](images/140292912683664)

- typeExpansion(+Graph1,+Graph2)

- typeExpansion(+Graph1,+Graph2,-Graph3)

- Thispredicaterealizesthetypeexpansionoperationonconceptualgraphs.Graph1isagraph,

- Graph2isthedi(cid:11)erentiaofatypede(cid:12)nitionandGraph3istheresultinggraph.

- Thetwoversionsdi(cid:11)erinmodifyingGraph1;typeExpansion/2modi(cid:12)esGraph1whichisthe

- resultofthisoperation.

- Arguments:

Graph1GraphId

Graph2GraphId

Graph3GraphId

- typeContraction(+Graph1,+Graph2)

- typeContraction(+Graph1,+Graph2,-Graph3)

- Thispredicaterealizesthetypecontractionoperation.Graph1isagraph,Graph2isthe

- di(cid:11)erentiaofatypede(cid:12)nitionandGraph3istheresultinggraphfromwhichasubgraphhas

- beendeletedandreplacedbyasingleconcept(thegenusofthetypede(cid:12)nition).

- Thetwoversionsdi(cid:11)erinmodifyingGraph1;typeContraction/2modi(cid:12)esGraph1whichis

- theresultofthisoperation.

- Arguments:

Graph1GraphId

Graph2GraphId

Graph3GraphId

- relationExpansion(+Graph1,+Graph2)

- relationExpansion(+Graph1,+Graph2,-Graph3)

- Thispredicaterealizestherelationexpansionoperationonconceptualgraphs.Graph1isa

- graph,Graph2istherelatorofarelationde(cid:12)nition.Graph3istheresultinggraphobtained

- fromGraph1afteraconceptualrelation,anditsattachedconceptsarereplacedwithGraph2.

- Thetwoversionsdi(cid:11)erinmodifyingGraph1;relationExpansion/2modi(cid:12)esGraph1,which

- istheresultofthisoperation.

- Arguments:

Graph1GraphId

Graph2GraphId

Graph3GraphId

- relationContraction(+Graph1,+Graph2)

- relationContraction(+Graph1,+Graph2,-Graph3)

- Graph1isagraph,Graph2isasubgraphofGraph1andtherelatorofarelationde(cid:12)nition.

- Graph3istheresultinggraphobtainedfromGraph1afterthesubgraphGraph2isreplaced

- byasingleconceptualrelationde(cid:12)nedbytherelationde(cid:12)nition.

- Thetwoversionsdi(cid:11)erinmodifyingGraph1;relationContraction/2modi(cid:12)esGraph1,

- whichistheresultofthisoperation.

- Arguments:

Graph1GraphId

Graph2GraphId

Graph3GraphId

- 4ServiceFeatures

- Foramoreconvinientuseofthesystem,weaddedsomeservicefeaturesdescribedinthis

- section.Attributelistsareprovidedforgraphorganization.Fileoperationshelpsavingand

- restoringtheknowledgebase.

- 4.1AttributeLists

- Inthischapter,predicatesformanagingattributelistsaredescribed.Thesystemprovidesthis

- featurefortheusertoorganizethegraphsingroupsandtoassignattributestothem.Some

- usefulattributescouldbecanonical,typedef,temporary.Theuserisfullyresponsiblefor

- managingtheselists.Thesystemsupportsacurrentattributelist,andallnewlycreated

- graphsareinsertedthereautomatically.Thereforethesystemprovidessomepredicatesfor

- managingthecurrentattributelist.Allexistingattributelistsaresavedandrestoredtogether

- withtherestoftheKB(see4.2.1).

- getCurAttrList(-Name)

- Uni(cid:12)esNamewiththenameofthecurrentattributelist.

- Arguments:

NameAtom

- setCurAttrList(+Name)

- SetsthecurrentattributelisttoName.

- Arguments:

NameAtom

- addAttrList(+Name,+Graph)

- AddsGraphtotheattributelistnamedName.Ifthereisnosuchattributelist,itwillbe

- created.

- Arguments:

NameAtom

GraphGraphID

- deleteAttrList(?Name,?Graph)

- RemovestheGraphfromtheattributelistnamedName.TheGraphitselfisnotdeleted.In

- caseoneorbothargumentsarevariables,duringbacktrackingallmatchingpairsofNameand

- Grapharedeleted.

- Arguments:

NameAtom

GraphGraphID

- getAttrList(?Name,?Graph)

- SucceedsifNameisthenameofanattributelistGraphiscontainedin.

Ifoneorboth- argumentsarevariablesonbacktrackingallmatchingpairsarefound.Thisallows(cid:12)ndingall

- graphsonagivenattributelistorallattributelistsofagivengraph.

- Arguments:

NameAtom

GraphGraphID

- deleteAllGraphs(+Name)

- AllgraphsthatareontheattributelistnamedNamearedeletedfromtheknowledgebase,

- andthelistisemptied.Namemustbecompletelyboundtoavoiddeletingallgraphsonall

- listsaccidentally.

- Arguments:

NameAtom

- deleteAllAttrLists(+Graph)

- TheGraphisremovedfromallattributelistsitison.Itisnotdeleteditself.Graphmustbe

- completelyboundtoavoidaccidentallydeletingallgraphsonalllists.

- Arguments:

GraphGraphID

- 4.2InitializingandSavingtheKnowledgeBase

- 4.2.1Loading,SavingandRestoringtheKnowledgeBase

- loadKBase(+File)

- Thispredicatewillloadandparsea(cid:12)le,containingthefollowingrelationsinprologsyntax.

(cid:15)cg(CG)-CGisaconceptualgraphsatisfyingthelinearform,includingtypeandrelationde(cid:12)nitions.

(cid:15)isa(Subtype,Supertype)

- ThecurrentattributelistisinitializedwiththevaluedefaultAttrList.

- Arguments:

FileAtom

- loadKBasewithconvert(+File)

- Thispredicatereadsa(cid:12)leandconvertsthecontent.Theusergivestherulesforconverting

- Term1intoTerm2:convert(+Term1,+Term2):-<convertingrules>.

- ItispossibletohavemorethenoneconvertingrulebutonlyoneruleperTerm1.Example:

convert(lex(Word,Graph),plex(Word,ID)):-

parseCG(ID,Graph).

- ThecurrentattributelistisinitializedwiththevaluedefaultAttrList.

- Arguments:

FileAtom

- Workingwiththesystemitisimportanttobeabletosaveandrestoresessions.Therefore

- thesystemo(cid:11)erstwopredicates.Savingandrestoringincludesallpartsoftheknowledge

- base:

Table2:PartsoftheKnowldegeBasetobesavedwithsaveKBase/1

conceptualgraphs

cg/2cgc/5

typehierarchy

isa/2

typede(cid:12)nitions

typedef/2

relationde(cid:12)nitions

relationdef/2

individuals

ind/3

attributelists

attrList/2

nameofcurrentattributlist

curAttrList(globalvariable)

nextId(globalvariable)

currentidenti(cid:12)er

- Fortheexactformatofrelationsintable2seesection2.

- saveKBase(+File)

- SaveallpartsoftheknowledgebaseinFile.IfFiledoesnotexistthesystemwillsearch

- for(cid:12)leFile.cg.

- Arguments:

FileAtom

- restoreKBase(+File)

- RestoretheconceptualgraphknowledgebasefromFile.IfFiledoesnotexistthesystem

ItisimportantthatFileisa(cid:12)lethathasbeencreatedby- willsearchfor(cid:12)leFile.cg.

- saveKBase.

- Arguments:

FileAtom

- 4.2.2ParsingConceptualGraphsInLinearNotation

- Thesystemprovidesaparserwhichconvertsthelinearformtoourinternalrepresentation

- (seesection2).Theparseracceptsconceptualgraphsinlinearnotationasitisspeci(cid:12)edin

- (Eschetal.1994).

![140292909954064](images/140292909954064)

![140292909955344](images/140292909955344)

![140292909955600](images/140292909955600)

![140292909956880](images/140292909956880)

![140292909981968](images/140292909981968)

![140292909982160](images/140292909982160)

![140292909982416](images/140292909982416)

![140292909982928](images/140292909982928)

![140292909983120](images/140292909983120)

![140292909984272](images/140292909984272)

![140292909984656](images/140292909984656)

![140292909985168](images/140292909985168)

![140292909985360](images/140292909985360)

![140292909985680](images/140292909985680)

![140292909495440](images/140292909495440)

![140292909496208](images/140292909496208)

![140292909496400](images/140292909496400)

![140292909496656](images/140292909496656)

![140292909498064](images/140292909498064)

![140292909523728](images/140292909523728)

![140292909523920](images/140292909523920)

![140292909524176](images/140292909524176)

![140292909525136](images/140292909525136)

![140292909525648](images/140292909525648)

![140292909525840](images/140292909525840)

![140292909526096](images/140292909526096)

![140292909564176](images/140292909564176)

![140292909565008](images/140292909565008)

![140292909565200](images/140292909565200)

![140292909565520](images/140292909565520)

![140292909567696](images/140292909567696)

![140292909598096](images/140292909598096)

![140292909598288](images/140292909598288)

![140292909599056](images/140292909599056)

![140292909600016](images/140292909600016)

![140292909630352](images/140292909630352)

- parseCG(+LGraph,-GraphID)

- ThepredicateparseCG/2parsesthe(cid:12)rstargumentLGraph.Theidenti(cid:12)eroftheparsed

- graphwillbeuni(cid:12)edwithGraphIDandthegraphandallconceptswillbeassertedintothe

- knowledgebase.Thegraphwillbeaddedtothecurrentattributelist(ifexisting).

- Arguments:

LGraphAtom;CGinlinearform

GraphIDAtom

- 5Conclusion

- ThispaperhasintroducedathoroughdescriptionofaCGrepresentationinPrologandthe

- basicgraphoperations.Wehaveintroducedabstractdatatypes(ADTs)forconcepts,graphs,

- types,referentsandindividuals.ForeachADT,alistofoperationshasbeenprovided.These

- datatypeshavebeenusedasbuildingblocksfortheimplementationofallbasicCGoperations

- (e.g.copy,maximaljoin,etc.).

- ArunningimplementationexistsbothforSNIandLPAProlog.Therearesomealgorithms

- thatneedfurtherre(cid:12)nement,butthemainpartiscompleted.Additionalworkaimsatthe

- developmentofnewalgorithmsforproperhandlingofcomplexgraphs,andthetypeand

- relationexpansion/contractionoperations.

- Somefurtherstepsareforinstancetheimplementationofageneratorforthelinearformand

- aqueryoperationforsearchingthroughtheknowledgebase.

- AlthoughwestillhavealotofideasconcerningtheenvironmentofCGProitisalreadynow

- ausefultoolforcomparingandjoininggraphsaswellasdealingwiththetypehierarchy.

- Acknowledgements

- WewouldliketothankDr.GaljaAngelovaforimplementingsomeofthealgorithmsandher

- usefulcommentsconcerningreferent(cid:12)elds,projectionandtypeandrelationexpansion.

- FinallywethankAlexandraKleinandJens-UweM(cid:127)ollerfortheircommentsonourwork.

- However,anymistakesthatstillremainareourown.

- References

Esch,John,MauricePagnucco,MichelWermelinger,andHeatherPfei(cid:11)er.1994.Linear-linearnotationinterface.InGerardEllisandRobertLevinson,editors,ICCS'94ThirdPEIRCEWorkshop:AConceptualGraphWorkbench,pages45{52,CollegePark,MD,USA.UniversityofMaryland.

Hook,S.andK.Ahmad.1992.Conceptualgraphsandtermelaboration:Explicating(terminological)knowledge.Translator'sWorkbenchProjectESPRITIINo.231510,Uni-versityofSurrey,July.

Sowa,JohnF.1984.ConceptualStructuresInformationProcessinginMindandMachine.Addison-WesleyPublishingCompany.

Sowa,JohnF.1992.Conceptualgraphssummary.InTimothyE.Nagle,JaniceA.Nagle,LaurieL.Gerholz,andPeterW.Eklund,editors,ConceptualStructurescurrentresearchandpractice.EllisHorwood,chapterI1,pages3{51.

Sowa,JohnF.1993.Relatingdiagramstologic.InGuyW.Mineau,BernardMoulin,andJohnF.Sowa,editors,ConceptualGraphsforKnowledgeRepresentation;FirstInterna-tionalConferenceonConceptualStructures,ICCS'93;QuebecCity,Canada,August4-7,1993;Proceedings,pages1{35.Springer-Verlag,August.

Sowa,JohnF.andEileenC.Way.1986.

Implementingasemanticinterpreterusingconceptualgraphs.IBMJournalofResearchandDevelopment,30(1):57{69,Jan.

Velardi,Paola,MariaTeresaPazienza,andMarioDe'Giovanetti.1988.Conceptualgraphsfortheanalysisandgenerationofsentences.IBMJ.Res.Develop.,32(2):251{267,March.