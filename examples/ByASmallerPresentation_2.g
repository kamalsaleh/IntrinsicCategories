

LoadPackage( "ModulePresentationsForCAP", ">=2016.09.22" );
LoadPackage( "IntrinsicCategories" );
LoadPackage( "HomologicalAlgebraForCAP" );
LoadPackage( "RingsForHomalg" );

R := HomalgFieldOfRationalsInSingular()*"x,y,z";
#! Q[x,y,z]
m := HomalgMatrix( "[ [ x,z,y,y,y, 3,4,5,6,7,2,3,4,5,6 ] ]", 3,5, R );
#! <A 3 x 5 matrix over an external ring>
h := HomalgMatrix( [ [ "x,1,y,1,z" ] ], 5,1, R ); 
#! <A 5 x 1 matrix over an external ring>
n := HomalgMatrix( [ [ "x^2+y^2+y*z+y+z,3*x+5*y+7*z+10,2*x+4*y+6*z+8,-x^2-y^2-y*z-y-z,-3*x-5*y-7*z-10, -2*x-4*y-6*z-8" ] ], 6,1, R );
#! <A 6 x 1 matrix over an external ring>
M := AsLeftPresentation( m );
#! <An object in Category of left presentations of Q[x,y,z]>
N := AsLeftPresentation( n );
#! <An object in Category of left presentations of Q[x,y,z]>
f := PresentationMorphism( M, h, N );
#! <A morphism in Category of left presentations of Q[x,y,z]>
Display( f );
#! x,
#! 1,
#! y,
#! 1,
#! z 
#! 
#! A morphism in Category of left presentations of Q[x,y,z]
category := IntrinsicCategory( LeftPresentations( R ) );
#! intrinsic_Category of left presentations of Q[x,y,z]
M := Intrinsify( category, M );
#! <an intrinsic object on active cell: <An object in Category of left presentations of Q[x,y,z]>>
N := Intrinsify( category, N );
#! <an intrinsic object on active cell: <An object in Category of left presentations of Q[x,y,z]>>
f := Intrinsify( f, M, 1, N, 1 );
#! <an intrinsic morphism on active cell: <A morphism in Category of left presentations of Q[x,y,z]>>
PositionOfActiveCell( f );
#! [ 1, 1, 1 ]
Display( f );
#! x,
#! 1,
#! y,
#! 1,
#! z 
#! 
#! A morphism in Category of left presentations of Q[x,y,z]
sp := FunctorByASmallerPresentationLeft( R );
#! By a smaller presentation functor for Category of left presentations of Q[x,y,z]
SPre := Intrinsify( sp, category );
#! Intrinsic version of By a smaller presentation functor for Category of left presentations of Q[x,y,z]
Id := IdentityFunctor( category );
#! Identity functor of intrinsic_Category of left presentations of Q[x,y,z]
etaSPre := Intrinsify( 
     NaturalIsomorphismFromIdentityToByASmallerPresentationLeft( R ), Id, SPre );
#! Intrinsic version of Natural isomorphism from Id to By a smaller presentation functor for Category of left presentations of Q[x,y,z]
SetIsIsomorphism( etaSPre, true );
IdSPre := TurnAutoequivalenceIntoIdentityFunctor( etaSPre );
#! Intrinsic version of By a smaller presentation functor for Category of left presentations of Q[x,y,z] as identity functor with side \
#! effects
Display( f );
#! x,
#! 1,
#! y,
#! 1,
#! z 
#! 
#! A morphism in Category of left presentations of Q[x,y,z]
ApplyFunctor( IdSPre, f );
#! <an intrinsic morphism on active cell: <A morphism in Category of left presentations of Q[x,y,z]>>
Display( f );
#! y,
#! 1,
#! z 
#! 
#! A morphism in Category of left presentations of Q[x,y,z]
PositionOfActiveCell( f );
#! [ 2, 2, 1 ]
CertainCell( f, 1,2,1 );
#! <A morphism in Category of left presentations of Q[x,y,z]>
Display( last );
#! x,
#! 1,
#! y,
#! 1,
#! z 
#! 
#! A morphism in Category of left presentations of Q[x,y,z]

