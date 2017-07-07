//
//  ExerciseData.m
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import "ExerciseData.h"

@implementation ExerciseData

+ (NSArray *) getMuscleGroups
{
    NSMutableArray *muscleArray = [@[] mutableCopy];
    
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @0, MUSCLE_GROUP_NAME: @"Abdominal", MUSCLE_GROUP_PICTURE: @"Abdomen.png"}];
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @1, MUSCLE_GROUP_NAME: @"Chest", MUSCLE_GROUP_PICTURE: @"Chest.png"}];
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @2, MUSCLE_GROUP_NAME: @"Biceps", MUSCLE_GROUP_PICTURE: @"Biceps.png"}];


    
    return [muscleArray copy];
}

+ (NSArray *) getAllExercises
{
    NSMutableArray *exerciseArray = [@[] mutableCopy];
    //Abdominal
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Knee/Hip Raise", EXERCISE_DESCRIPTION: @"1. Position your body on the vertical leg raise bench so that your forearms are resting on the pads next to the torso and holding on to the handles. Your arms will be bent at a 90 degree angle.\n2. The torso should be straight with the lower back pressed against the pad of the machine and the legs extended pointing towards the floor. This will be your starting position.\n3. Now as you breathe out, lift your legs up as you keep them extended. Continue this movement until your legs are roughly parallel to the floor and then hold the contraction for a second. Tip: Do not use any momentum or swinging as you perform this exercise.\n4. Slowly go back to the starting position as you breathe in."}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Bent-Knee Hip Raise", EXERCISE_DESCRIPTION: @"1. Lay flat on the floor with your arms next to your sides.\n2. Now bend your knees at around a 75 degree angle and lift your feet off the floor by around 2 inches.\n3. Using your lower abs, bring your knees in towards you as you maintain the 75 degree angle bend in your legs. Continue this movement until you raise your hips off of the floor by rolling your pelvis backward. Breathe out as you perform this portion of the movement. Tip: At the end of the movement your knees will be over your chest.\n4. Squeeze your abs at the top of the movement for a second and then return to the starting position slowly as you breathe in. Tip: Maintain a controlled motion at all times."}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @2, EXERCISE_NAME: @"Decline Crunch", EXERCISE_DESCRIPTION: @"1. Secure your legs at the end of the decline bench and lie down.\n2. Now place your hands lightly on either side of your head keeping your elbows in. Tip: Don't lock your fingers behind your head.\n3. While pushing the small of your back down in the bench to better isolate your abdominal muscles, begin to roll your shoulders off it.\n4. Continue to push down as hard as you can with your lower back as you contract your abdominals and exhale. Your shoulders should come up off the bench only about four inches, and your lower back should remain on the bench. At the top of the movement, contract your abdominals hard and keep the contraction for a second. Tip: Focus on slow, controlled movement - don't cheat yourself by using momentum.\n5. After the one second contraction, begin to come down slowly again to the starting position as you inhale."}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @3, EXERCISE_NAME: @"3/4 Sit-Up", EXERCISE_DESCRIPTION: @"1. Lie down on the floor and secure your feet. Your legs should be bent at the knees.\n2. Place your hands behind or to the side of your head. You will begin with your back on the ground. This will be your starting position.\n3. Flex your hips and spine to raise your torso toward your knees.\n4. At the top of the contraction your torso should be perpendicular to the ground. Reverse the motion, going only ¾ of the way down."}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @4, EXERCISE_NAME: @"Cross-Body Crunch", EXERCISE_DESCRIPTION: @"1. Lie flat on your back and bend your knees about 60 degrees.\n2. Keep your feet flat on the floor and place your hands loosely behind your head. This will be your starting position.\n3. Now curl up and bring your right elbow and shoulder across your body while bring your left knee in toward your left shoulder at the same time. Reach with your elbow and try to touch your knee. Exhale as you perform this movement. Tip: Try to bring your shoulder up towards your knee rather than just your elbow and remember that the key is to contract the abs as you perform the movement; not just to move the elbow.\n4. Now go back down to the starting position as you inhale and repeat with the left elbow and the right knee."}];
    
//Chest
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @5, EXERCISE_NAME: @"Barbell Bench Press", EXERCISE_DESCRIPTION: @"1. Lie back on a flat bench. Using a medium width grip (a grip that creates a 90-degree angle in the middle of the movement between the forearms and the upper arms), lift the bar from the rack and hold it straight over you with your arms locked. This will be your starting position.\n2. From the starting position, breathe in and begin coming down slowly until the bar touches your middle chest.\n3. After a brief pause, push the bar back to the starting position as you breathe out. Focus on pushing the bar using your chest muscles. Lock your arms and squeeze your chest in the contracted position at the top of the motion, hold for a second and then start coming down slowly again. Tip: Ideally, lowering the weight should take about twice as long as raising it.\n4. Repeat the movement for the prescribed amount of repetitions.\nCaution: \nIf you are new at this exercise, it is advised that you use a spotter. If no spotter is available, then be conservative with the amount of weight used.\nAlso, beware of letting the bar drift too far forward. You want the bar to touch your middle chest and nowhere else.\nDon't bounce the weight off your chest. You should be in full control of the barbell at all times."}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @6, EXERCISE_NAME: @"Incline Dumbbell Press", EXERCISE_DESCRIPTION: @"1. Lie back on an incline bench with a dumbbell in each hand atop your thighs. The palms of your hands will be facing each other.\n2. ПThen, using your thighs to help push the dumbbells up, lift the dumbbells one at a time so that you can hold them at shoulder width.\n3. Once you have the dumbbells raised to shoulder width, rotate your wrists forward so that the palms of your hands are facing away from you. This will be your starting position.\n4. Be sure to keep full control of the dumbbells at all times. Then breathe out and push the dumbbells up with your chest.\n5. Lock your arms at the top, hold for a second, and then start slowly lowering the weight. Tip Ideally, lowering the weights should take about twice as long as raising them."}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @7, EXERCISE_NAME: @"Cable Crossover", EXERCISE_DESCRIPTION: @"1. To get yourself into the starting position, place the pulleys on a high position (above your head), select the resistance to be used and hold the pulleys in each hand.\n2. Step forward in front of an imaginary straight line between both pulleys while pulling your arms together in front of you. Your torso should have a small forward bend from the waist. This will be your starting position.\n3. With a slight bend on your elbows in order to prevent stress at the biceps tendon, extend your arms to the side (straight out at both sides) in a wide arc until you feel a stretch on your chest. Breathe in as you perform this portion of the movement. Tip: Keep in mind that throughout the movement, the arms and torso should remain stationary; the movement should only occur at the shoulder joint.\n4. Return your arms back to the starting position as you breathe out. Make sure to use the same arc of motion used to lower the weights."}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @8, EXERCISE_NAME: @"Dumbbell Flyes", EXERCISE_DESCRIPTION: @"1. Lie down on a flat bench with a dumbbell on each hand resting on top of your thighs. The palms of your hand will be facing each other.\n2. Then using your thighs to help raise the dumbbells, lift the dumbbells one at a time so you can hold them in front of you at shoulder width with the palms of your hands facing each other. Raise the dumbbells up like you're pressing them, but stop and hold just before you lock out. This will be your starting position.\n3. With a slight bend on your elbows in order to prevent stress at the biceps tendon, lower your arms out at both sides in a wide arc until you feel a stretch on your chest. Breathe in as you perform this portion of the movement. Tip: Keep in mind that throughout the movement, the arms should remain stationary; the movement should only occur at the shoulder joint.\n4. Return your arms back to the starting position as you squeeze your chest muscles and breathe out. Tip: Make sure to use the same arc of motion used to lower the weights."}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @9, EXERCISE_NAME: @"Close-Hands Push-Up", EXERCISE_DESCRIPTION: @"1. Get in the push-up position on your toes with your hands directly under your shoulders. Your body should be as straight as possible, maintaining the neutral alignment of your head. This is your start position.\n2. Allow your elbows to break as you lower your body toward the floor but don’t allow it to touch. Keep your body as straight as possible. Your elbows should be pointing rearward, bent about 90 degrees, at the bottom position.\n3. Press back up through your hands to full arm extension."}];

//Biceps
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @10, EXERCISE_NAME: @"Dumbbell Alternate Bicep Curl", EXERCISE_DESCRIPTION: @"1. Stand (torso upright) with a dumbbell in each hand held at arms length. The elbows should be close to the torso and the palms of your hand should be facing your thighs.\n2. ДWhile holding the upper arm stationary, curl the right weight as you rotate the palm of the hands until they are facing forward. At this point continue contracting the biceps as you breathe out until your biceps is fully contracted and the dumbbells are at shoulder level. Hold the contracted position for a second as you squeeze the biceps. Tip: Only the forearms should move.\n3. Slowly begin to bring the dumbbell back to the starting position as your breathe in. Tip: Remember to twist the palms back to the starting position (facing your thighs) as you come down.\n4. Repeat the movement with the left hand. This equals one repetition."}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @11, EXERCISE_NAME: @"Barbell Curl", EXERCISE_DESCRIPTION: @"1. Stand up with your torso upright while holding a barbell at a shoulder-width grip. The palm of your hands should be facing forward and the elbows should be close to the torso. This will be your starting position.\n2. While holding the upper arms stationary, curl the weights forward while contracting the biceps as you breathe out. Tip: Only the forearms should move.\n3. Continue the movement until your biceps are fully contracted and the bar is at shoulder level. Hold the contracted position for a second and squeeze the biceps hard.\n4. Slowly begin to bring the bar back to starting position as your breathe in."}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @12, EXERCISE_NAME: @"Spider Curl ", EXERCISE_DESCRIPTION: @"1. Start out by setting the bar on the part of the preacher bench that you would normally sit on. Make sure to align the barbell properly so that it is balanced and will not fall off.\n2. Move to the front side of the preacher bench (the part where the arms usually lay) and position yourself to lay at a 45 degree slant with your torso and stomach pressed against the front side of the preacher bench.\n3. Make sure that your feet (especially the toes) are well positioned on the floor and place your upper arms on top of the pad located on the inside part of the preacher bench.\n4. Use your arms to grab the barbell with a supinated grip (palms facing up) at about shoulder width apart or slightly closer from each other.\n5. Slowly begin to lift the barbell upwards and exhale. Hold the contracted position for a second as you squeeze the biceps.\n6. Slowly begin to bring the barbell back to the starting position as your breathe in."}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @13, EXERCISE_NAME: @"Concentration Curls", EXERCISE_DESCRIPTION: @"1. Sit down on a flat bench with one dumbbell in front of you between your legs. Your legs should be spread with your knees bent and feet on the floor.\n2. Use your right arm to pick the dumbbell up. Place the back of your right upper arm on the top of your inner right thigh. Rotate the palm of your hand until it is facing forward away from your thigh. Tip: Your arm should be extended and the dumbbell should be above the floor. This will be your starting position.\n3. While holding the upper arm stationary, curl the weights forward while contracting the biceps as you breathe out. Only the forearms should move. Continue the movement until your biceps are fully contracted and the dumbbells are at shoulder level. Tip: At the top of the movement make sure that the little finger of your arm is higher than your thumb. This guarantees a good contraction. Hold the contracted position for a second as you squeeze the biceps.\n4. Slowly begin to bring the dumbbells back to starting position as your breathe in. Caution: Avoid swinging motions at any time."}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @14, EXERCISE_NAME: @"Alternate Incline Dumbbell Curl", EXERCISE_DESCRIPTION: @"1. Sit down on an incline bench with a dumbbell in each hand being held at arms length. Tip: Keep the elbows close to the torso.This will be your starting position.\n2. While holding the upper arm stationary, curl the right weight forward while contracting the biceps as you breathe out. As you do so, rotate the hand so that the palm is facing up. Continue the movement until your biceps is fully contracted and the dumbbells are at shoulder level. Hold the contracted position for a second as you squeeze the biceps. Tip: Only the forearms should move.\n3. Slowly begin to bring the dumbbell back to starting position as your breathe in.\n4. Repeat the movement with the left hand. This equals one repetition."}];
    
   
    return [exerciseArray copy];
}

+ (NSArray *) getExercisesForGroup:(int)groupNumber
{
    NSMutableArray *exerciseArray = [@[] mutableCopy];
    
    for (NSDictionary *currentExercise in [self getAllExercises])
    {
        if ([currentExercise[MUSCLE_GROUP_NUMBER] integerValue] == groupNumber)
        {
            [exerciseArray addObject:currentExercise];
        }
    }
    
    return [exerciseArray copy];
}

+ (NSDictionary *) getDetailsForExerciseWithNumber:(int)exerciseNumber
{
    for (NSDictionary *currentExercise in [self getAllExercises])
    {
        if ([currentExercise[EXERCISE_NUMBER] integerValue] == exerciseNumber)
        {
            return currentExercise;
        }
    }
    return  nil;
}


+ (NSArray *) getAllExercisePictures
{
    NSMutableArray *pictureArray = [@[] mutableCopy];
    
    //Abdominal
    [pictureArray addObject:@{EXERCISE_NUMBER: @0, EXERCISE_PICTURE: @"Press01.jpg"}];
    [pictureArray addObject:@{EXERCISE_NUMBER: @0, EXERCISE_PICTURE: @"Press02.jpg"}];
    [pictureArray addObject:@{EXERCISE_NUMBER: @1, EXERCISE_PICTURE: @"Press03.jpg"}];
    [pictureArray addObject:@{EXERCISE_NUMBER: @1, EXERCISE_PICTURE: @"Press04.jpg"}];
    [pictureArray addObject:@{EXERCISE_NUMBER: @2, EXERCISE_PICTURE: @"Press05.jpg"}];
    [pictureArray addObject:@{EXERCISE_NUMBER: @2, EXERCISE_PICTURE: @"Press06.jpg"}];
    [pictureArray addObject:@{EXERCISE_NUMBER: @3, EXERCISE_PICTURE: @"Press07.jpg"}];
    [pictureArray addObject:@{EXERCISE_NUMBER: @3, EXERCISE_PICTURE: @"Press08.jpg"}];
    [pictureArray addObject:@{EXERCISE_NUMBER: @4, EXERCISE_PICTURE: @"Press09.jpg"}];
    [pictureArray addObject:@{EXERCISE_NUMBER: @4, EXERCISE_PICTURE: @"Press10.jpg"}];

//Chest
[pictureArray addObject:@{EXERCISE_NUMBER: @5, EXERCISE_PICTURE: @"Grud01.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @5, EXERCISE_PICTURE: @"Grud02.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @6, EXERCISE_PICTURE: @"Grud03.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @6, EXERCISE_PICTURE: @"Grud04.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @7, EXERCISE_PICTURE: @"Grud05.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @7, EXERCISE_PICTURE: @"Grud06.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @8, EXERCISE_PICTURE: @"Grud07.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @8, EXERCISE_PICTURE: @"Grud08.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @9, EXERCISE_PICTURE: @"Grud09.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @9, EXERCISE_PICTURE: @"Grud10.jpg"}];

//Biceps
[pictureArray addObject:@{EXERCISE_NUMBER: @10, EXERCISE_PICTURE: @"Biceps01.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @10, EXERCISE_PICTURE: @"Biceps02.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @11, EXERCISE_PICTURE: @"Biceps03.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @11, EXERCISE_PICTURE: @"Biceps04.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @12, EXERCISE_PICTURE: @"Biceps05.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @12, EXERCISE_PICTURE: @"Biceps06.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @13, EXERCISE_PICTURE: @"Biceps07.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @13, EXERCISE_PICTURE: @"Biceps08.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @14, EXERCISE_PICTURE: @"Biceps09.jpg"}];
[pictureArray addObject:@{EXERCISE_NUMBER: @14, EXERCISE_PICTURE: @"Biceps10.jpg"}];


    
    return [pictureArray copy];
}
+ (NSArray *) getPicturesForExercise:(int)exerciseNumber
{
    NSMutableArray *pictureArray = [@[] mutableCopy];
    
    for (NSDictionary *currentPictureDictionary in [self getAllExercisePictures])
    {
        if ([currentPictureDictionary[EXERCISE_NUMBER] integerValue] == exerciseNumber)
        {
            [pictureArray addObject:[UIImage imageNamed:currentPictureDictionary[EXERCISE_PICTURE]]];
        }
    }
    
    return [pictureArray copy];
}

@end
