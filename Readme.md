# Development Stage: Need a will? Call McGill! (Alpha)

This modifies a lot of things pertaining to pi foundation's pixel DE(based on LXDE). Might not work on other desktop environments. 
Contact me on discord if you want a cubic made iso of this. Username: sounddrill

Something might break with updates, keep that in mind. Will be fixed eventually. 


# Roadmap:
done(✅)/partial(*️⃣)/not done(❌)

1. Welcome to raspberry pi splash screen customization*️⃣
2. ~~Wallpaper~~ Saulpaper✅
3. Notification playing theme intro❌
4. Cubic pre-built images(need hosting)*️⃣
5. Plymouth/something else with animated boot screen(non-goal)❌
6. Replace the raspberry pi logo in menu icon✅
7. Fix raspberry pi logo from lock screen(non-goal)

# Known issues:
1. A lot of raspberry pi branding left over(non goal)
2. ~~Splash screen is only working sometimes(restart screen(working), everything else(not working))~~ Works after commit [2dfa2383bd2a00b6681fc94e64defea0f1b442bb](https://github.com/sounddrill31/saulgoodmanOS-custom/commit/2dfa2383bd2a00b6681fc94e64defea0f1b442bb)
3. Gets stuck in ModemManager.service screen, just wait it out.
4. ~~Dark Menu logo and splash screen. Will fix later, you can replace these with your own pics too~~ Fixed!
5. Let me know.

# Instructions:
1. Download raspberry pi OS x86 or arm. no dedicated iso for sg-OS since I do not have hosting :(
2. Install it onto a VM/raspberry pi or wherever you'd like.
3. run the following command, and it will do everything for you!
```
cd ~ && wget https://raw.githubusercontent.com/sounddrill31/saulgoodmanOS-custom/main/updatesgos.sh && bash updatesgos.sh
```
4. Restart using ```sudo reboot```
5. If it doesn't do the customisations, restart graphically once more, and open an issue tab if it still doesn't work.

# Credits

SG-OS would not be possible without the following open source software/people:
1. Me, I wrote the bash script lol.
2. Raspbian OS x86/ARM, based on debian 11 at the time of testing.
3. A lot of forums, way too many for my own sanity.
4. pcmanfm's CLI tools, mostly carried my wallpaper part, might help in notifications part too.
5. The raspberry pi forums for helpfully explaining things with code snippets and entertaining other users'(mine too) noobish questions and explaining well.
6. Thanks a lot to Vince Gilligan and team for the amazing show.

# Users' thoughts/Testimonies: 

### "better use Saul(GoodmannOS)" - u/OttoLindenbrock(non-user)

### "I'm able to game on this thing!" - Me, I used it in a VM.

### "Better install Saul(GoodmanOS)" - u/AvinashReddy3108(non-user)


# Dev Trolling:
"I am not crazy! I know he swapped those kernel repos. As if I could ever make such a mistake. Never. Never! I just - I just couldn't prove it. He covered his tracks, he got that idiot at the buildbot testing to lie for him. You think this is something? You think this is bad? This? This chicanery? He's done worse. That interview! Are you telling me that a man just happens to get approved? No! He orchestrated it! Jimmy! He made a GIMP ripoff! And I saved him! And I shouldn't have. I took him into my own startup! What was I thinking? He'll never change. He'll never change! Ever since he was 9, always the same! Couldn't keep his hands out of the VPN router! But not our Jimmy! Couldn't be precious Jimmy! Sussing them blind! And HE gets to be a developer? What a sick joke! I should've stopped him when I had the chance!"
