#! @Chapter Examples and Tests

#! @Section TurnAutoequivalenceIntoIdentityFunctor

LoadPackage( "ModulePresentationsForCAP", ">=2016.09.22" );
LoadPackage( "IntrinsicCategories" );
LoadPackage( "HomologicalAlgebraForCAP" );
LoadPackage( "RingsForHomalg" );

#! @Example 
R := HomalgFieldOfRationalsInSingular()*"x,y,z";
#! Q[x,y,z]
cat_left_pre:= LeftPresentations( R );
#! Category of left presentations of Q[x,y,z]
m := HomalgMatrix( "[ [ x,z,y,y,y, 3,4,5,6,7,2,3,4,5,6 ] ]", 3,5, R );
#! <A 3 x 5 matrix over an external ring>
M := AsLeftPresentation( m );
#! <An object in Category of left presentations of Q[x,y,z]>
Display( M );
#! x,z,y,y,y,
#! 3,4,5,6,7,
#! 2,3,4,5,6 
#! 
#! An object in Category of left presentations of Q[x,y,z]
phi := CoverByFreeModule( M );
#! <A morphism in Category of left presentations of Q[x,y,z]>
category := IntrinsicCategory( cat_left_pre );
#! intrinsic_Category of left presentations of Q[x,y,z]
M := Intrinsify( category, M );
#! <an intrinsic object on active cell: <An object in Category of left presentations 
#! of Q[x,y,z]>>
Display( M );
#! x,z,y,y,y,
#! 3,4,5,6,7,
#! 2,3,4,5,6 
#! 
#! An object in Category of left presentations of Q[x,y,z]
F := Intrinsify( category, Source( phi ) );
#! <an intrinsic object on active cell: <An object in Category of left presentations 
#! of Q[x,y,z]>>
phi := Intrinsify( phi, F, 1, M, 1 );
#! <an intrinsic morphism on active cell: <A morphism in Category of left 
#! presentations of Q[x,y,z]>>
PositionOfActiveCell( phi );
#! [ 1, 1, 1 ]
Id := IdentityFunctor( category );
#! Identity functor of intrinsic_Category of left presentations of Q[x,y,z]
sp := FunctorByASmallerPresentationLeft( R );
#! By a smaller presentation functor for Category of left presentations of Q[x,y,z]
SPre := Intrinsify( sp, category );
#! Intrinsic version of By a smaller presentation functor for Category of left 
#! presentations of Q[x,y,z]
etaSPre := Intrinsify( 
    NaturalIsomorphismFromIdentityToByASmallerPresentationLeft( R ), Id, SPre );
#! Intrinsic version of Natural isomorphism from Id to By a smaller presentation 
#! functor for Category of left 
#! presentations of Q[x,y,z]
SetIsIsomorphism( etaSPre, true );
IdSPre := TurnAutoequivalenceIntoIdentityFunctor( etaSPre );
#! Intrinsic version of By a smaller presentation functor for Category of left 
#! presentations of Q[x,y,z] as identity functor with side effects
Display( phi );
#! 1,0,0,0,0,
#! 0,1,0,0,0,
#! 0,0,1,0,0,
#! 0,0,0,1,0,
#! 0,0,0,0,1 
#! 
#! A morphism in Category of left presentations of Q[x,y,z]
Display( Source( phi ) );
#! (an empty 0 x 5 matrix)
#! 
#! An object in Category of left presentations of Q[x,y,z]
Display( Range( phi ) );
#! x,z,y,y,y,
#! 3,4,5,6,7,
#! 2,3,4,5,6 
#! 
#! An object in Category of left presentations of Q[x,y,z]
Display( M );
#! x,z,y,y,y,
#! 3,4,5,6,7,
#! 2,3,4,5,6 
#! 
#! An object in Category of left presentations of Q[x,y,z]
ApplyFunctor( IdSPre, phi );
#! <an intrinsic morphism on active cell: <A morphism in Category of left 
#! presentations of Q[x,y,z]>>
Display( phi );             
#! 1, 2, 3, 
#! -2,-3,-4,
#! 1, 0, 0, 
#! 0, 1, 0, 
#! 0, 0, 1  
#! 
#! A morphism in Category of left presentations of Q[x,y,z]
Display( Source( phi ) );
#! (an empty 0 x 5 matrix)
#! 
#! An object in Category of left presentations of Q[x,y,z]
Display( Range( phi ) );
#! x+y-2*z,2*x+y-3*z,3*x+y-4*z
#! 
#! An object in Category of left presentations of Q[x,y,z]
Display( M );
#! x+y-2*z,2*x+y-3*z,3*x+y-4*z
#! 
#! An object in Category of left presentations of Q[x,y,z]
#! @EndExample

