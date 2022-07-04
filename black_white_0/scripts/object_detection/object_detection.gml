/*With this code we want to project an imaginary line from the front of the player 
to check for a collision with a specified object. If the distance and direction 
is correct then an interaction is allowed.
*/
function object_detection(){ 

//Set up vars
var x_dir = lengthdir_x(34,angle);//These two dir vars will project a collision line based on the direction the player is facing.
var y_dir = lengthdir_y(34,angle);
var hit = collision_line(x,y,x+x_dir,y+y_dir,o_interaction_parent,false,true);//Stores the instance ID of what was detected by the collision line. 

if hit != -4  //if the collision is hitting anything
{		
	with(hit){
		sprite_index = spr_inv;
	}
	//Creates text box
	if !instance_exists(o_text_box) and key_enter{
		instance_create_depth(x,y,-9999,o_text_box);
	}
	//Logic for determining progression of text box
if instance_exists(o_text_box){
	switch(global.state)
	{
		case states.ghost:
			if instance_exists(o_alex){
				if (hit == o_alex.id){
		
					switch(o_text_box.counter)
								{
									case 0:
									o_text_box.sprite = s_portrait_alex;
									o_text_box.font = f_dialogue;
									o_text_box.myText = "I know in theory that they loved me but I just don't feel it... I'm, so tired.";
									next_step();
									break;
									case 1: 
									o_text_box.myText = "Why did this have to happen now?... I know my parents are going to die before me but right now!?";
									next_step();
									break;
									case 2:
									o_text_box.myText ="It used to drive me crazy how you always made a point of telling me where your will was, and your bank accounts, and all the important documents. But... now I guess I'm grateful that you did.";
									next_step();
									break;
								}
				} 
			}
			if instance_exists(o_sam){
				if (hit == o_sam.id){
					switch(o_text_box.counter)
								{
									case 0:
									o_text_box.sprite = s_portrait_sam;
									o_text_box.font = f_dialogue;
									o_text_box.myText = "We had our fights but it meant so much to me when they stayed with me through my initial health crisis.";
									next_step();
									break;
									case 1:
									o_text_box.myText = "I would have done anything for this to end differently... ";
									next_step();
									break;
									case 2:
									o_text_box.myText = "...And Alex, what are they going to do without you? You were the only family they had--the only home...";
									next_step();
									break;
								}
				
				}
			}
			if instance_exists(o_tristan){
				if (hit == o_tristan.id){
					switch(o_text_box.counter)
								{
									case 0:
									o_text_box.sprite = s_portrait_tristan;
									o_text_box.font = f_dialogue;
									o_text_box.myText = "Why couldn't they have been more careful and saved me all this extra emotional turmoil.  I didn't want to deal with all this! I just wanted to take my share and go to a beach.";
									next_step();
								break;
									case 1:
									o_text_box.myText = "I was always telling them 'be sure to take better care of your cows next time!" ;
									next_step();
									break;
								
									case 2:
									o_text_box.myText = "I wish things had been different between us, too bad they were dissapointing right up until...";
									next_step();
									break;
								}
				}
			}
			if instance_exists(o_casket){
				 if (hit == o_casket.id){
							
					switch(o_text_box.counter)
								{
												case 0:
												o_text_box.sprite = s_portrait_casket;												
												o_text_box.myText ="As you approach the casket at the center of the room, it grows difficult to move. You are too cold and too hot; it is hard to breathe and... beginning to smell of... death? The air grows more putrid every second.";
												next_step();
												break;
												case 1: 
												o_text_box.sprite = s_portrait_ghost;
												o_text_box.font = f_internal;
												o_text_box.myText = "I have to know what's going on here! Whose funeral is this...? This... this can't be, I can't be...";
												o_player.death = true;
												break;
											}
				}
			}
			if instance_exists(o_guestbook){
				 if (hit == o_guestbook.id){
					switch(o_text_box.counter)
								{
												case 0:
												o_text_box.sprite = s_portrait_guestbook;
												o_text_box.font = f_wingdings;
												//o_text_box.choice = true;
												o_text_box.myText ="Tristan's Entry\n'I will never forget the way you looked at me when we were younger. When our relationship was younger.'";
												next_step();
												break;
												case 1:
												o_text_box.sprite = s_portrait_ghost;
												o_text_box.font = f_internal;
												o_text_box.myText ="Why can't I read this...?"
												next_step();
												break;
												case 2:
												o_text_box.sprite = s_portrait_guestbook;
												o_text_box.font = f_wingdings;
												o_text_box.myText ="Alex's Entry\n'Did this work? Or did this not work? Something something anything at all. '";
												next_step();
												break;
												case 3:
												o_text_box.sprite = s_portrait_ghost;
												o_text_box.font = f_internal;
												o_text_box.myText ="Why can't I read anything?!";
												next_step();
												break;
												case 4: 
												o_text_box.sprite = s_portrait_guestbook;
												o_text_box.font = f_wingdings;
												o_text_box.myText ="Sams's Entry\n'Did this work? Or did this not work?Yuuup this cannot be read by the average person.'";
												next_step();
												break;										
												case 5:
												o_text_box.sprite = s_portrait_ghost;
												o_text_box.font = f_internal;
												o_text_box.myText ="Why the !?#*% can't I read anything?!";
												break;
								}
				}	
			}
			if instance_exists(o_pamphlet){
				if(hit == o_pamphlet.id){
					switch(o_text_box.counter)
								{
												case 0:
												o_text_box.font = f_wingdings;
												o_text_box.sprite = s_portrait_pamphlet;
												o_text_box.myText ="This text will not be readable in game. The player will read it in wingdings. It will be all symbols.";
												next_step();
												break;
												case 1:
												o_text_box.font   = f_internal;
												o_text_box.sprite = s_portrait_ghost;
												o_text_box.myText = "Why can't I read anything?! I really wish I could figure out who this party is for... ";
												break;
											
								}
				}
			}
		break;
		
		case states.alex:
			if instance_exists(o_tristan){
				if (hit == o_tristan.id){
					if o_tristan.interacted_with == false{
						global.alex_goals +=1;
						o_tristan.interacted_with = true;
					}
					switch(o_text_box.counter)
									{
										case 0:
										o_text_box.font = f_dialogue;
										o_text_box.sprite = s_portrait_tristan;
										o_text_box.myText = "You're gonna do just great kid. You got your education, that should help you figure it out despite the economy doing whatever it pleases.";
										next_step();
										break;
										case 1:
										o_text_box.font = f_internal;
										o_text_box.sprite = s_portrait_alex;
										o_text_box.myText = "How comforting as usual, Tristan."
										break;
									}
				}
			}
			if instance_exists(o_sam){
				if (hit == o_sam.id){
					if o_sam.interacted_with == false{
						global.alex_goals +=1;
						o_sam.interacted_with = true;
					}
					switch(o_text_box.counter)
									{
										case 0:
										o_text_box.font = f_dialogue;
										o_text_box.sprite = s_portrait_sam;
										o_text_box.myText = "Once all these hard feelings settle down you'll have an easier time listening to yourself, you'll know what you want and who you want to be.";
										next_step();
										break;
									
										case 1: 
										o_text_box.font = f_internal;
										o_text_box.myText = "How does Sam always know how to make me feel a little better?";
										break;
									}
				}
			}
			if instance_exists(o_casket){
				if (hit == o_casket.id){
					if o_casket.interacted_with == false{
						global.alex_goals +=1;
						o_casket.interacted_with = true;
					}
					switch(o_text_box.counter)
									{
										case 0:
										o_text_box.font = f_dialogue;
										o_text_box.sprite = s_portrait_alex;
										o_text_box.myText = "I don't know what I am going to do without you, but I didn't know what I was doing when you were still here either...I guess I'm just glad you repeated your classic advice so much that I can hear it in my head forever... ";
										next_step();
										break;
										case 1:
										o_text_box.myText ="'cook your chicken till the juice runs clear','love harder than you hate.', 'dont drink and drive the riding lawmower'... you didn't always know what to say but you said it anyway."
										next_step();
										break;
										break;
										case 2:
										o_text_box.font = f_internal;
										o_text_box.sprite = s_portrait_alex;
										o_text_box.myText = "...You never did tell me if you knew from personal experience about the riding lawnmower. Maybe Sam knows."; 
										break;
									}
				}
			}
			if instance_exists(o_guestbook){
				if (hit == o_guestbook.id){
					if o_guestbook.interacted_with == false{
						global.alex_goals +=1;
						o_guestbook.interacted_with = true;
					}
					switch(o_text_box.counter)
									{
										case 0:
										o_text_box.font = f_description;
										o_text_box.sprite = s_portrait_guestbook;
										o_text_box.myText ="Tristan's Entry\nI will never forget the way you looked at me when we were younger. When our relationship was younger... I'm so grateful for the wonderful time we had together.";
										next_step();
										break;
									
										case 1:
										o_text_box.myText ="Tristan's Entry Continued\nDespite how short it was, I will miss our long morning walks around the farm while the sun rose, me with my black coffee and you with your two bags of lipton black tea with a scoop of sugar and just a splash of milk.";
										next_step();
										break;
										case 2:
										o_text_box.font = f_internal;
										o_text_box.sprite = s_portrait_alex;
										o_text_box.myText = "Is that how you really feel Tristan? You sure made a stink about those walks while you were getting divorced. Whatever."
										next_step();
										break;
										case 3:
										o_text_box.font = f_description;
										o_text_box.sprite = s_portrait_guestbook;
										o_text_box.myText ="Sam's Entry\nRemember that time when we had just met in school I didn't want to ask Bobbi out but you told me 'Whats the worst that could happen, you'll have more information than you did before.Take action! see what you find!'"
										next_step();
										break;
										case 4:
										o_text_box.myText ="Sam's Entry Continued\nWell... I asked Bobbie out and got a big 'N.O.' that was okay thought because you and I got to spend the whole summer together that year in the boat fishing. - Sammy";
										next_step();
										break;
										case 5:
										o_text_box.font = f_internal;
										o_text_box.sprite = s_portrait_alex;
										o_text_box.myText ="No one is gonna be there for me at graduation next weekend. If I ever get married my parents wont be able to be there. Maybe I just won't attend graduation...";
										next_step();
										break;
										case 6:
										o_text_box.font = f_description;
										o_text_box.sprite = s_portrait_guestbook;
										o_text_box.myText ="Alex's Entry\nYou meant the world to me, I don't know how I will fill your shoes, do all that you did in a day, be as big as you. I guess I am going to have to figure it out. I Love you. - Lex";
										next_step();
										break;
										case 7:
										o_text_box.font = f_internal;
										o_text_box.sprite = s_portrait_alex;
										o_text_box.myText = "I thought I knew everything about what was going on in my life, but now... I dont know what I want, let alone what to do next.";
										break;
									}
				}
			}
			if instance_exists(o_pamphlet){
				if (hit == o_pamphlet.id){
					if o_pamphlet.interacted_with == false{
						global.alex_goals +=1;
						o_pamphlet.interacted_with = true;
					}
					switch(o_text_box.counter)
									{
										case 0:
										o_text_box.font = f_description;
										o_text_box.sprite = s_portrait_pamphlet;
										o_text_box.myText = "Our Beloved Jude - Service Schedule\nTristan Talks\nSam Talks\nAlex Talks\nSong\nPallbearers Procession\n";
										next_step();
										break;
									
										case 1: 
										o_text_box.myText = "(next page) Poem about death and life\n'We all get a single spoonful of life, a little salt, a little honey too. Taste the whole thing the best you can for sooner than we'd ever like all that's left is the taste of clean silver.'";
										next_step();
										break;
									
										case 2:
										o_text_box.font = f_internal;
										o_text_box.sprite = s_portrait_alex
										o_text_box.myText = "Gosh I hate giving speeches... especially about my dead parent. My palms are sweating, is there a tissue around here somewhere? I want to take a nap but I haven't been able to sleep in days.";
										break;
									}
				}
			}		
		break;
					
		case states.sam:
			if instance_exists(o_tristan){
				if (hit == o_tristan.id){
					if o_tristan.interacted_with == false{
						global.sam_goals +=1;
						o_tristan.interacted_with = true;
					}
					switch(o_text_box.counter){
						case 0:
							o_text_box.font = f_dialogue;
							o_text_box.sprite = s_portrait_sam;
							o_text_box.myText = "The two of you were so close, its amazing you didn't get left with the farm and everything despite only ever having been roomates.";
							next_step();
						break;
						case 1:
							o_text_box.font = f_internal;
							o_text_box.sprite = s_portrait_sam;
							o_text_box.myText = "I know we were discrete but it still stings, especially now. ";
						break;
					}


				}
			}
			if instance_exists(o_alex){
					if (hit == o_alex.id){
						if o_alex.interacted_with == false{
							global.sam_goals +=1;
							o_alex.interacted_with = true;
						}
						switch(o_text_box.counter){
							case 0:
								o_text_box.font = f_dialogue;
								o_text_box.sprite = s_portrait_alex;
								o_text_box.myText = "'What were they like...? You know, when they were my age?'";
								next_step();
							break;
							case 1:
								o_text_box.font = f_internal;
								o_text_box.sprite = s_portrait_sam;
								o_text_box.myText = "Beautiful, smart, funny, talented...amazing";
							break;
						}
					}
				}
			if instance_exists(o_casket){	
				if (hit == o_casket.id){
					if o_casket.interacted_with == false{
						global.sam_goals +=1;
						o_casket.interacted_with = true;
					}
					switch(o_text_box.counter){
						case 1:
							o_text_box.font = f_dialogue;
							o_text_box.sprite = s_portrait_sam;
							o_text_box.myText = "You look so peaceful, Jude. Almost like you did when sleeping off a hangover back in college... but with more wrinkles this time.";
							next_step();
						break;
					
						case 2:
							o_text_box.font = f_internal;
							o_text_box.sprite = s_portrait_sam;
							o_text_box.myText ="So this is really it? You're just gonna leave me here on earth by myself with no one to secretly hate F.R.I.E.N.D.S. with?! How could you do this to me after all these years, we've all been hunting our whole lives.. You should have been more careful, there are people here that need you!";
						break;
					}
				}
			}
			if instance_exists(o_guestbook){	
				if (hit == o_guestbook.id){
					if o_guestbook.interacted_with == false{
						global.sam_goals +=1;
						o_guestbook.interacted_with = true;
					}
					switch(o_text_box.counter){
						case 0:
										o_text_box.font = f_description;
										o_text_box.sprite = s_portrait_guestbook;
										o_text_box.myText ="Tristan's Entry\nI will never forget the way you looked at me when we were younger. When our relationship was younger... I'm so grateful for the wonderful time we had together.";
										next_step();
						break;
									
						case 1:
										o_text_box.myText ="Tristan's Entry Continued\nDespite how short it was, I will miss our long morning walks around the farm while the sun rose, me with my black coffee and you with your two bags of lipton black tea with a scoop of sugar and just a splash of milk.";
										next_step();
						break;
						case 2:
										o_text_box.font = f_internal;
										o_text_box.sprite =s_portrait_sam;
										o_text_box.myText ="They were such a cute couple when they first met...Honestly maybe Jude's best relationship of all, despite their rough spots. They learned a lot together. Jude was so torn up after Alex's father passed away, we all thought they would never find someone again.";
										next_step();
						break;
									
						case 3:
										o_text_box.font = f_description;
										o_text_box.sprite = s_portrait_guestbook;
										o_text_box.myText ="Sam's Entry\nRemember that time when we had just met in school I didn't want to ask Bobbi out but you told me 'Whats the worst that could happen, you'll have more information than you did before.Take action! see what you find!'"
										next_step();
						break;
						case 4:
										o_text_box.myText ="Sam's Entry Continued\nWell... I asked Bobbie out and got a big 'N.O.' that was okay thought because you and I got to spend the whole summer together that year in the boat fishing. - Sammy";
										next_step();
					
						break;
						case 5:
										o_text_box.font = f_internal;
										o_text_box.sprite =s_portrait_sam;
										o_text_box.myText =	"That and letting those pigs out was one of the best things we ever got up to pal. I would do anything for another chance to see the afternoon sun bounce off the water onto your face while catching bass in the summers.";		
										next_step();
						break;
						case 6:
										o_text_box.font = f_description;
										o_text_box.sprite = s_portrait_guestbook;
										o_text_box.myText ="Alex's Entry\nYou meant the world to me, I don't know how I will fill your shoes, do all that you did in a day, be as big as you. I guess I am going to have to figure it out. I Love you. - Lex";
										next_step();
						break;
						case 7:
										o_text_box.font = f_internal;
										o_text_box.sprite = s_portrait_sam;
										o_text_box.myText = "Christ, the kiddo has already been through so much... and now this. Both parents gone before graduation and a farm to take care of. Someone needs to be there for them.";
						break;
					}//end of switch on o_text_box.coutner
				}//End of if statement for hit
			}//End of instance exists check
			if instance_exists(o_pamphlet){	
				if (hit == o_pamphlet.id){
					if o_pamphlet.interacted_with == false{
						global.sam_goals +=1;
						o_pamphlet.interacted_with = true;
					}
					switch(o_text_box.counter){
										case 0:
										o_text_box.font = f_description;
										o_text_box.sprite = s_portrait_pamphlet;
										o_text_box.myText = "Our Beloved Jude - Service Schedule\nTristan Talks\nSam Talks\nAlex Talks\nSong\nPallbearers Procession\n";
										next_step();
										break;
									
										case 1: 
										o_text_box.myText = "(next page) Poem about death and life\n'We all get a single spoonful of life, a little salt, a little honey too. Taste the whole thing the best you can for sooner than we'd ever like all that's left is the taste of clean silver.'";
										break;
						}
					}
			}
		case states.tristan:
			if instance_exists(o_alex){
				if (hit == o_alex.id){
					if o_alex.interacted_with == false{
						global.tris_goals +=1;
						o_alex.interacted_with = true;
					}
					switch(o_text_box.counter){
						case 0:
							o_text_box.font = f_dialogue;
							o_text_box.sprite = s_portrait_alex;
							o_text_box.myText = "I know I wasn't always the nicest to you since you guys got married, but I'd really like it if you came to my graduation--especially in light of... well, this.";
							next_step();
						break;
						case 1:
							o_text_box.font = f_internal;
							o_text_box.sprite = s_portrait_tristan;
							o_text_box.myText = "I bet they were just looking for a way to get out of going to that graduation.";
						break;
					}
				}
			}
			if instance_exists(o_sam){	
				if (hit == o_sam.id){
					if o_sam.interacted_with == false{
						global.tris_goals +=1;
						o_sam.interacted_with = true;
					}
					switch(o_text_box.counter){
						case 0:
							o_text_box.font = f_dialogue;
							o_text_box.sprite = s_portrait_sam;
							o_text_box.myText = "We're gonna do our best to be there for Alex in the future. They're gonna need us to be, right Tristan?";
							next_step();
						break;
						case 1:
							o_text_box.font = f_internal;
							o_text_box.sprite = s_portrait_tristan;
							o_text_box.myText = "Sure I will, Sam. Sure I will. As soon as I get my cut of the farm, my #@% is on its way to Tahiti.";
						break;
					}
				}
			}
			if instance_exists(o_casket){	
				if (hit == o_casket.id){
					if o_casket.interacted_with == false{
						global.tris_goals +=1;
						o_casket.interacted_with = true;
					}
					switch(o_text_box.counter){
						case 0:
							o_text_box.font = f_dialogue;
							o_text_box.sprite = s_portrait_tristan;
							o_text_box.myText = "You were always so kind to me, even while we were separating.";
							next_step();
						break;
					
						case 1:
							o_text_box.font = f_internal;
							o_text_box.sprite = s_portrait_tristan;
							o_text_box.myText ="They never really tried to love me, they were just pretending to...if I had known this was going to happen right now, I wouldnt have pushed for the divorce";
						break;
					}
				}
			}
			if instance_exists(o_guestbook){	
				if (hit == o_guestbook.id){
					if o_guestbook.interacted_with == false{
						global.tris_goals +=1;
						o_guestbook.interacted_with = true;
					}
					switch(o_text_box.counter){
						case 0:
										o_text_box.font = f_description;
										o_text_box.sprite = s_portrait_guestbook;
										o_text_box.myText ="Tristan's Entry\nI will never forget the way you looked at me when we were younger. When our relationship was younger... I'm so grateful for the wonderful time we had together.";
										next_step();
						break;
									
						case 1:
										o_text_box.myText ="Tristan's Entry Continued\nDespite how short it was, I will miss our long morning walks around the farm while the sun rose, me with my black coffee and you with your two bags of lipton black tea with a scoop of sugar and just a splash of milk.";
										next_step();
						break;
						case 2:
										o_text_box.font = f_internal;
										o_text_box.sprite =s_portrait_tristan;
										o_text_box.myText ="I really won't forget all the beautiful moments... how could you misunderstand me so much, how could we get so far without you really seeing me. After everything we went through together.";
										next_step();
						break;
									
						case 3:
										o_text_box.font = f_description;
										o_text_box.sprite = s_portrait_guestbook;
										o_text_box.myText ="Sam's Entry\nRemember that time when we had just met in school I didn't want to ask Bobbi out but you told me 'Whats the worst that could happen, you'll have more information than you did before.Take action! see what you find!'"
										next_step();
						break;
						case 4:
										o_text_box.myText ="Sam's Entry Continued\nWell... I asked Bobbie out and got a big 'N.O.' that was okay thought because you and I got to spend the whole summer together that year in the boat fishing. - Sammy";
										next_step();
					
						break;
						case 5:
										o_text_box.font = f_internal;
										o_text_box.sprite =s_portrait_tristan;
										o_text_box.myText =	"You did always have a great attitude about life, even if you were too stuck on work all the time. ";		
										next_step();
						break;
						case 6:
										o_text_box.font = f_description;
										o_text_box.sprite = s_portrait_guestbook;
										o_text_box.myText ="Alex's Entry\nYou meant the world to me, I don't know how I will fill your shoes, do all that you did in a day, be as big as you. I guess I am going to have to figure it out. I Love you. - Lex";
										next_step();
						break;
						case 7:
										o_text_box.font = f_internal;
										o_text_box.sprite = s_portrait_tristan;
										o_text_box.myText = "I never really liked your kid but this whole situation is devastating. I never wanted to see them like this.";
						break;
					}
				}
			}
			if instance_exists(o_pamphlet){	
				if (hit == o_pamphlet.id){
					if o_pamphlet.interacted_with == false{
						global.tris_goals +=1;
						o_pamphlet.interacted_with = true;
					}
					switch(o_text_box.counter){
										case 0:
										o_text_box.font = f_description;
										o_text_box.sprite = s_portrait_pamphlet;
										o_text_box.myText = "Our Beloved Jude - Service Schedule\nTristan Talks\nSam Talks\nAlex Talks\nSong\nPallbearers Procession\n";
										next_step();
										break;
									
										case 1: 
										o_text_box.myText = "(next page) Poem about death and life\n'We all get a single spoonful of life, a little salt, a little honey too. Taste the whole thing the best you can for sooner than we'd ever like all that's left is the taste of clean silver.'";
										break;
						}
				}
			}
		break;
		}//End of switch on global.state

	
	
	}// End of if textbox exists
}//End of if hit 

//Text box disappears after walking away. 
if instance_exists(o_text_box) and distance_to_object(hit) > 128{
	instance_destroy(o_text_box);	
}
var c = c_white;
if hit c = c_red;
draw_line_color(x,y,x+x_dir,y+y_dir,c,c);
o_interaction_parent.image_blend = c_white;
	with(hit)
	{
		image_blend = c_white;
	}
}