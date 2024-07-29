<script>
import carousel from "vue-owl-carousel"
import { $vfm, VueFinalModal, ModalsContainer } from 'vue-final-modal'
import { Hooper, Slide, Navigation as HooperNavigation, Pagination as HooperPagination } from 'hooper';

// Data
import data from "@/assets/data/data.json"


// For Modal screenshots
const mainPath = import.meta.env.BASE_URL  + "images/portfolio/modals"

export default {
	components: { carousel, VueFinalModal, ModalsContainer, Hooper, Slide, HooperNavigation, HooperPagination },
	data () {
		return {
			menu: { active: false, current: ''},

			// navigations: ['Home', 'About', 'Work Experience', 'Portfolio', 'Project', 'Contact'],
			navigations: [
				{name: 'Home', href: '#intro'},
				{name: 'About', href: '#about'},
				{name: 'Work Experience', href: '#resume'},
				{name: 'Portfolio', href: '#portfolio'},
				{name: 'Projects', href: '#services'},
				{name: 'Contact', href: '#contact'}
			],

			skills: [
				{ name: 'Figma', percent: 90 },
				{ name: 'Axure', percent: 85 },
				{ name: 'Adobe XD', percent: 85 },
				{ name: 'Adobe Photoshop', percent: 90 },
				{ name: 'Adobe Illustrator', percent: 80 },
			],

			technicalSkills: [
				{
					title: 'Operating Systems',
					skills: [
						{ name: 'Mac OS', percent: 90 },
						{ name: 'Microsoft Windows', percent: 80 }
					]
				},
				{
					title: 'Video Editing Software',
					skills: [
						{ name: 'Final Cut Pro', percent: 70 },
						{ name: 'Adobe Premier Pro', percent: 85 },
					]
				},
				{
					title: 'Database and Software Application',
					skills: [
						{ name: 'NO SQL', percent: 50 },
						{ name: 'MongoDB', percent: 50 },
						{ name: 'Yugabyte', percent: 50 }
					]
				},
				{
					title: 'Application Software',
					skills: [
						{ name: 'Vue', percent: 50 },
						{ name: 'Nuxt', percent: 50 },
						{ name: 'VS Code', percent: 50 },
						{ name: 'Javascript', percent: 55 },
						{ name: 'HTML', percent: 70 },
						{ name: 'CSS', percent: 70 },
					]
				},
				{
					title: 'Project Management Tool',
					skills: [
						{ name: 'Trello', percent: 80 },
						{ name: 'Jira', percent: 80 }
					]
				}
			],

			workExperiences: [
				{
					company: 'Centralized Cloud Computing International',
					from: 'February 2017', to: 'Present',
					positions: [
						{
							name: 'Senior UI/UX Designer', from: '2017', to: 'Present', 
							description: 'Collaborates with the application developers to ensure that the product has an intuitive design and feel and user-friendly software by developing wireframes and lo-fi and hi-fi prototypes. Develops website, web and chatbot applications in support of the company\'s development team. Responsible for the overall design of the IT Group materials for proposal, presentation and collaterals.'
						},
						{
							name: 'Project Manager', from: '2021', to: 'Present', 
							description: 'Oversees various business initiatives or projects, monitors progress and completion of the project, and ensures that we meet the clients\' expectations and keeping them informed throughout the project lifecycle. Collaborates with teammates to ensure that all project requirements, deadlines, and timelines are met.'
						},
						{
							name: 'Quality Assurance Tester', from: '2020', to: 'Present', 
							description: 'Collaborates with the development team to provide high-quality software. Creates test plans, scenarios, scripts, and procedures. Analyze test results and log reports to the development team.'
						},
					],
				},
				{
					company: 'FDA Philippines ODG',
					from: '2018', to: '2019',
					positions: [
						{ 
							name: 'Consultant for Branding',
							description: 'Reports directly to the Office of the Director General. Provide evaluation reports with recommendations on FDA\'s branding policy. Deliver creative and innovative ideas for print, electronic, web-based, and animated presentations and submit delivery reports. Design reports, project briefers, and other communication materials and provide guidelines on the design and submit reports on all the designs made. Improve and edit powerPoint and keynote presentations, photos, charts, and other graphic elements. Layout and design information (banners, posters, booklets, leaflets, books, calendars, bulletins, flyers, cards), and assist in the printing of the communication materials.'
						}
					]
				},
				{
					company: 'Lucky Titanium - City of Dreams Manila',
					from: '2016', to: '2017',
					positions: [
						{ 
							name: 'Marketing Account Manager - VIP', 
							description: 'Welcomes incoming and departing guests and present them the company profile and capabilities. Inform guest of current promotions and services Manage and answer guest queries and calls and provide appropriate solutions and services.'}
					]
				},
				{
					company: 'Infinity Asia Production',
					from: '2010', to: '2016',
					positions: [
						{ 
							name:'Creative Designer',
							description: 'Creates and visualizes graphics including illustrations, logos, layouts and photos.'}
					]
				},
				{
					company: 'Freelancer',
					from: '2005', to: '2010',
					positions: [
						{ 
							name: 'Freelance Graphic Artist',
							description: 'As a freelance graphic artist, I usually worked on multiple projects for multiple clients simultaneously. I write my own contracts, determine my own fees, setting my work hours, and finding clients. At the same time, selling has been a side hustle too.'}
					]
				}
			],

			
			projects: [
				{ 
					icon: 'fa-solid fa-briefcase', title: 'Ease of Doing Business',
					description: 'Automated Business Registration in Dolores Quezon - Smartjuan24 <br> (UI/UX Design, App Development)'
				},
				{
					icon: 'fa-solid fa-mobile-screen', title: 'Digital Lifestyle App',
					description: 'Banking Application for PNB - Digital <br>(Project Management)'
				},
				{
					icon: 'fa fa-desktop', title: 'Administrator Console for Chatbot',
					description: 'BMW Philippines <br>(Chatbot Development, Project Managment, QA, UI/UX Design)'
				},
				{
					icon: 'fa-regular fa-building', title: 'Campus Management System',
					description: 'Mindanao State University <br> (QA, UI/UX Design)'
				},
				{
					icon: 'fa-solid fa-desktop', title: 'Chatbot and Administrator Portal',
					description: 'Governor Oyie Umali of Nueva <br>(Chatbot Development, Management, QA)'
				},
				{
					icon: 'fa-regular fa-comments', title: 'Social Network',
					description: 'Chizmis Project <br>(Project Management, UI/UX Design)'
				},
				{
					icon: 'fa-regular fa-credit-card', title: 'e-Commerce',
					description: 'GoRice Philippines <br>(QA)'
				},
				{
					icon: 'fa fa-university', title: 'Digital ERP',
					description: 'University Information System, Human Resource Information System and Learning Management System for Romblon State University <br> (UI/UX Design)'
				},
				{
					icon: 'fa-regular fa-comment', title: 'Chatbot',
					description: 'Moves Made Easy in Sydney Australia <br> (App Development)'
				},
				{
					icon: 'fa fa-users', title: 'HRIS - PIMS',
					description: 'Human Resource Information System - Property Information Management System for GCG <br> (UI/UX Design, QA)'
				}
			],

			modal: { active: false, data: null },
			modals: this.getModalData()
		}
	},

	mounted() {
		console.log("Module", data)
		console.log("Module", this.modals)
	},

	methods: {
		getModalData() {
			var modalArray = []
			data.forEach(e => {
				modalArray.push({
					title: e.title,
					imagePath: import.meta.env.BASE_URL + e.imagePath,
					description: e.description,
					data: {
						...(e.data.isVideo && { isVideo: true }),
						images: this.getScreens(e.data.imagePath, e.data.noOfScreens),
						title: e.data.title,
						description: e.data.description,
						extra: e.data.extra
					}
				})
			})	

			return modalArray
		},
		getScreens(path, noOfScreens) {
			var path = mainPath + path
			// var noOfScreens = 6
			var paths = []
			for (let index = 0; index < noOfScreens; index++) {
				let ext = path.includes('videos') ? '.mp4' : '.png'
				var element = `${path}${index+1}${ext}`
				
				console.log("Elements :>", element)
				paths.push(element)
				
			}
			return paths
		},
		showMenu() {
			this.menu.active = !this.menu.active
		},
		showModal(index) {
			this.modal.active = true
			console.log(this.modals)
			console.log(index)
			this.modal.data = this.modals[index].data
			console.log(this.modal.data)
			this.$modal.show("modal")
		},

		hideModal() {
			this.$modal.hide("modal")
		}
	}
}
</script>

<template>
  <div>
    <header>   	
   	<div class="row">

   		<div class="top-bar">
   			<a class="menu-toggle" @click="showMenu"><span>Menu</span></a>

	   		<div class="logo">
				<a>KARDS</a>
			</div>		      
		   	<nav id="main-nav-wrap">
				<ul class="main-navigation" v-if="menu.active">
					<li 
						@click="menu.current = item.name; menu.active = false"
						:class="navigations.indexOf(menu.current) == index ? 'current' : ''"
						v-for="item, index in navigations" 
						:key="index">
						<a v-smooth-scroll class="smoothscroll" :href="item.href">{{ item.name }}</a>
						
					</li>
					<!-- <li class="current"><a class="smoothscroll"  href="#intro" title="">Home</a></li>
					<li><a class="smoothscroll"  href="#about" title="">About</a></li>
					<li><a class="smoothscroll"  href="#resume" title="">Resume</a></li>
					<li><a class="smoothscroll"  href="#portfolio" title="">Portfolio</a></li>
					<li><a class="smoothscroll"  href="#services" title="">Services</a></li>					
					<li><a class="smoothscroll"  href="#contact" title="">Contact</a></li>	 -->
					<!-- <li><a href="styles.html" title="">Style Demo</a></li>				 -->
				</ul>
			</nav>    		
   		</div> <!-- /top-bar --> 
   		
   	</div> <!-- /row --> 		
   </header> <!-- /header -->

	<!-- intro section
   ================================================== -->
   <section id="intro">   

   	<div class="intro-overlay"></div>	

   	<div class="intro-content">
   		<div class="row">

   			<div class="col-twelve">

	   			<h5>Konnichiwa</h5>
	   			<h1>I'm Franchezca</h1>

	   			<p class="intro-position">
	   				<!-- <span>Front-end Developer</span> -->
	   				<span>UI/UX SPECIALIST</span> 
	   			</p>

	   			<a v-smooth-scroll class="button stroke smoothscroll" href="#about" title="">More About Me</a>

	   		</div>  
   			
   		</div>   		 		
   	</div> <!-- /intro-content --> 

   	<ul class="intro-social">    
		 <li><a href=""><i class="fa-brands fa-github"></i></a></li>
		 <li><a href="https://www.linkedin.com/in/chz-qui-a82b32251" target="_blank"><i class="fa-brands fa-linkedin"></i></a></li>    
         <!-- <li><a href="#"><i class="fa fa-facebook"></i></a></li>
         <li><a href="#"><i class="fa fa-behance"></i></a></li>
         <li><a href="#"><i class="fa fa-twitter"></i></a></li>
         <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
         <li><a href="#"><i class="fa fa-instagram"></i></a></li> -->
      </ul> <!-- /intro-social -->      	

   </section> <!-- /intro -->


   <!-- about section
   ================================================== -->
	<section id="about">  

		<div class="row section-intro">
			<div class="col-twelve">
				<h5>About</h5>
				<h1>Let me introduce myself</h1>
				<div class="intro-info">
					<img src="@/assets/images/profile-pic.jpg" alt="Profile Picture">
					<p class="lead">A UI/UX designer obsessed with <span style="color:#81d8d0">#81d8d0</span> and coffee! Most clients and partners call me "Ms. Chiz" 🧀 (instead of Ms. Chez). I've been designing user interfaces for over 7 years, collateral & presentation designs for a decade, and had maybe around 9098 crazy ideas and 10001 coffee cups to keep me awake while working (I'm not complaining 'coz I love it!). I've worked on everything from app design to development to testing. I used to be a unicorn but I realized that I'm more into creating designs than app development. In my free time, I enjoy eating, trying out new restaurants with the family, playing duolingo, sleeping, online shopping, binge-watching, and of course, coffeeing! Selling has been a side hustle too. Perhaps, entrepreneurship also runs in the blood. <br><br> Btw, don't forget to check out my portfolio below. And if you want to download my CV, feel free to email me so I can give you a password. See yah! 👋</p>
				</div>   			
			</div>   		
		</div> <!-- /section-intro -->

		<div class="row about-content">
			<div class="col-six tab-full">
				<!-- <h3>Profile</h3>
				<p>Lorem ipsum Qui veniam ut consequat ex ullamco nulla in non ut esse in magna sint minim officia consectetur nisi commodo ea magna pariatur nisi cillum.</p> -->
				<ul class="info-list">
					<li>
						<strong>Fullname:</strong>
						<span>Franchezca Quiocho</span>
					</li>
					<li>
						<strong>Job:</strong>
						<span>Senior UI/UX Specialist</span>
					</li>
					<li>
						<strong>Education:</strong>
						<span>BSBA - Computer Management</span>
						<span>Colegio De San Juan De Letran 1998 - 2002</span>
					</li>
					<li>
						<strong>Github:</strong>
						<span>https://ftquiocho.github.io/portfolio/</span>
					</li>
					<li>
						<strong>Email:</strong>
						<span>iamftq@gmail.com</span>
					</li>
				</ul> <!-- /info-list -->
			</div>

			<div class="col-six tab-full">
				<h3>Prototyping & Design Tools</h3>
				<p>These are my arsenal to perform all my tasks</p>
				<ul class="skill-bars">
					<li v-for="skill, index in skills" :key="`skill2${index}`">
						<div :class="`progress percent${skill.percent}`"><span>{{ skill.percent }}%</span></div>
						<strong>{{ skill.name }}</strong>
					</li>
				</ul> <!-- /skill-bars -->		
			</div>
		</div>
		<div class="row button-section">
			<div class="col-twelve">
				<a href="#contact" title="Hire Me" class="button stroke smoothscroll">Hire Me</a>
				<a href="#" title="Download CV" class="button button-primary">Download Resume</a>
			</div>   		
		</div>
   </section> <!-- /process-->    


   <!-- resume Section
   ================================================== -->
	<section id="resume" class="grey-section">
		<div class="row section-intro">
			<div class="col-twelve">
				<h5>Work Experience</h5>
				<h1>"Every experience is an opportunity to learn and grow"</h1>
				<!-- <p class="lead">Lorem ipsum Do commodo in proident enim in dolor cupidatat adipisicing dolore officia nisi aliqua incididunt Ut veniam lorem ipsum Consectetur ut in in eu do.</p> -->
			</div>   		
		</div> <!-- /section-intro--> 
		<div class="row resume-timeline">
			<!-- <div class="col-twelve resume-header">
				<h2>Work Experience</h2>
			</div> -->
			<div class="col-twelve">
				<div class="timeline-wrap">
					<template v-for="work, index in workExperiences">
						<div class="timeline-block" v-for="position, innerIndex in work.positions" :key="`work${index}position${innerIndex}`" >
							<div class="timeline-ico">
								<i class="fa fa-briefcase"></i>
							</div>
							<div class="timeline-header" v-if="innerIndex==0">
								<h3>{{ work.company }}</h3>
								<p>{{`${work.from} - ${work.to}`}}</p>
							</div>
							<div class="timeline-content">
								<h4>{{ position.name }}</h4>
								<p v-if="position.from || position.to">{{ `${position.from} - ${position.to}` }}</p>
								<p>{{ position.description }}</p>
							</div>
						</div>
					</template>
				</div> <!-- /timeline-wrap -->   			
			</div> <!-- /col-twelve -->
		</div> <!-- /resume-timeline -->
		
		<!-- <div class="row resume-timeline">
			<div class="col-twelve resume-header">
				<h2>Education</h2>
			</div> 

			<div class="col-twelve">
				<div class="timeline-wrap">
					<div class="timeline-block">
						<div class="timeline-ico">
							<i class="fa fa-briefcase"></i>
						</div>
						<div class="timeline-header">
							<h3>BSBA Computer Management</h3>
							<p>1998 - 2002</p>
						</div>
						<div class="timeline-content">
							<h4>Colegio De San Juan De Letran</h4>
						</div>
					</div> 
				</div>  			
			</div> 
		</div>  -->
	</section> 


	<!-- Portfolio Section
   ================================================== -->
	<section id="portfolio">
		<div class="row section-intro">
			<div class="col-twelve">
				<h5>Portfolio</h5>
				<h1>“UI without UX is like beauty without brains. Not good enough.”</h1>
				<p class="lead">People always judge based on appearances, no matter how good the foundation (UX) is. Thus, user interface is critical. However, beauty without brains will not work. UX is also necessary. Check out some of my works below.</p>
			</div>   		
		</div> <!-- /section-intro--> 

		<div class="row portfolio-content">
			<div class="col-twelve">
				<!-- portfolio-wrapper -->
				<div id="folio-wrapper" class="block-1-2 block-mob-full stack">

					<div 
						@click="showModal(index)"
						class="bgrid folio-item" 
						v-for="modal, index in modals" :key="`modal${index}`">
						<div class="item-wrap">
							
							<img :src="modal.imagePath" alt="Image">
							<a class="overlay">	                  	           
							<div class="folio-item-table">
								<div class="folio-item-cell">
								<h3 class="folio-title">{{ modal.title }}</h3>	     					    
								<span class="folio-types">{{ modal.description }}</span>
								</div>	                      	
							</div>                    
							</a>
						</div>	               
					</div>


					<modal name="modal" 
						draggable=".window-header"
						:scrollable="true"
						:adaptive="true" 
						height="auto"
					>
						<div class="window-header"></div>
						<hooper  
							:style="{ height: '400px' }" 
							:centerMode="true" 
							:infiniteScroll="true"
							:itemsToShow="1"  
							:trimWhiteSpace="true"
							v-if="modal.data">
							<slide v-for="image, index in modal.data.images" :index="index" :key="index" :style="{ height: '100%' }">
								<video v-if="modal.data.isVideo" controls>
									<source :src="image" />
								</video>
								<img v-else v-img :src="image"/>
							</slide>
							
							<hooper-navigation slot="hooper-addons"></hooper-navigation>
							<hooper-pagination slot="hooper-addons"></hooper-pagination>
						</hooper>
						<div>
							<div class="description-box" v-if="modal.data">
								<h4>{{ modal.data.title }}</h4>
								<p>{{ modal.data.description }}</p>
								<div class="categories">{{ modal.data.extra }}</div>
							</div>

							<div class="link-box">
								<a @click="hideModal" class="poup-modal-dismiss">Close</a>
							</div>
						</div>

					</modal >
						

					<!-- <div :id="`modal-${index}`" class="popup-modal slier mfp-hide" v-for="modal, index in modals" :key="index">
						<div class="modal">
							<img :src="modal.imagePath">
						</div>
						<div class="description-box">
							<h4>Liberty</h4>
							<p>Goo goo gaa gaa</p>
							<div class="categories"> Web Development </div>
						</div>
						<div class="link-box">
							<a href="http://www.behance.net">Details</a>
							<a href="#" class="popup-modal-dismiss">Close</a>
						</div>		 
					</div> -->
				</div> <!-- /portfolio-wrapper --> 
			</div>  <!-- /twelve -->   
		</div> <!-- /portfolio-content --> 
	</section> <!-- /portfolio --> 


	<!-- CTA Section
   ================================================== -->
	<section id="cta" class="grey-section">

   	<div class="row cta-content">
   		<div class="col-twelve section-ads">  
			<h2 class="h01">Technical Knowledge</h2>	
			<template v-for="techSkill, techIndex in technicalSkills">
				<div  :key="`tech${techIndex}`">
					<h3 >{{ techSkill.title }}</h3>
					<ul class="skill-bars" >
						<li v-for="skill, index in techSkill.skills" :key="`skill${index}`">
							<div :class="`progress percent${skill.percent}`"><span>{{ skill.percent }}%</span></div>
							<strong>{{ skill.name }}</strong>
						</li>
					</ul>
				</div>
			</template>
   		</div>
   	</div> <!-- /cta-content -->
   </section> <!-- /cta --> 

	
	<!-- services Section
   ================================================== -->
	<section id="services">
		<div class="overlay"></div>
		<div class="row section-intro">
			<div class="col-twelve">
				<h5>Projects</h5>
				<h1>From concept to finish product</h1>
				<p class="lead">From design to development down to testing, plus some project management, I would like to share with you the projects I get involved in.</p>
			</div>   		
		</div> <!-- /section-intro -->

		<div class="row services-content">
			<div id="owl-slider" class="services-list">
				<carousel :nav="false">
					<div class="service" v-for="project, index in projects" :key="`project${index}`">	
						<span class="icon"><i :class="project.icon"></i></span>            
						<div class="service-content">	
							<h3>{{ project.title }}</h3>
							<p class=""><span v-html="project.description"></span></p>
						</div> 	         	 
					</div>
				</carousel>
			</div> 
		</div> <!-- /services-content -->
	</section> <!-- /services -->	


	<!-- stats Section
   ================================================== -->
	<section id="stats" class="count-up">

		<div class="row">
			<div class="col-twelve">

				<div class="block-1-6 block-s-1-3 block-tab-1-2 block-mob-full stats-list">

					<div class="bgrid stat">

						<div class="icon-part">
							<i class="fa-regular fa-lightbulb"></i>
						</div>

						<h3 class="stat-count">
							9098
						</h3>

						<h5 class="stat-title">
							Crazy Ideas
						</h5>

					</div> <!-- /stat -->					

					<div class="bgrid stat">

						<div class="icon-part">
							<i class="icon-cup"></i>
						</div>

						<h3 class="stat-count">
							10001
						</h3>

						<h5 class="stat-title">
							Coffee Cups
						</h5>

					</div> <!-- /stat -->

					<div class="bgrid stat">

						<div class="icon-part">
							<i class="fa-regular fa-clock"></i>
						</div>

						<h3 class="stat-count">
							12800
						</h3>

						<h5 class="stat-title">
							Hours Worked
						</h5>

					</div> <!-- /stat -->									

					<div class="bgrid stat">

						<div class="icon-part">
							<i class="fa-solid fa-display"></i>
						</div>

						<h3 class="stat-count">
							2
						</h3>

						<h5 class="stat-title">
							Broken Mac
						</h5>

					</div> <!-- /stat -->

					<div class="bgrid stat">

						<div class="icon-part">
							<i class="fa-regular fa-pen-to-square"></i>
						</div>

						<h3 class="stat-count">
							40
						</h3>

						<h5 class="stat-title">
							Broken Nibs
						</h5>

					</div> <!-- /stat -->

					<div class="bgrid stat">

						<div class="icon-part">
							<i class="fa-regular fa-face-grin-beam-sweat"></i>
						</div>

						<h3 class="stat-count">
							10000
						</h3>

						<h5 class="stat-title">
							Sweat & Tears
						</h5>

					</div> <!-- /stat -->

				</div> <!-- /stats-list -->

			</div> <!-- /twelve -->
		</div> <!-- /row -->

	</section> <!-- /stats -->

	
   <!-- contact
   ================================================== -->
	<section id="contact">
		<div class="row section-intro">
			<div class="col-twelve">
				<h5>Contact</h5>
				<h1>I'd Love To Hear From You</h1>
				<!-- <p class="lead">Lorem ipsum Do commodo in proident enim in dolor cupidatat adipisicing dolore officia nisi aliqua incididunt Ut veniam lorem ipsum Consectetur ut in in eu do.</p> -->
			</div> 
		</div>

		<!-- <div class="row contact-form">
			<div class="col-twelve">
				<form name="contactForm" id="contactForm" method="post" action="">
					<fieldset>
						<div class="form-field">
							<input name="contactName" type="text" id="contactName" placeholder="Name" value="" minlength="2" required="">
						</div>
						<div class="form-field">
							<input name="contactEmail" type="email" id="contactEmail" placeholder="Email" value="" required="">
						</div>
						<div class="form-field">
							<input name="contactSubject" type="text" id="contactSubject" placeholder="Subject" value="">
						</div>                       
						<div class="form-field">
							<textarea name="contactMessage" id="contactMessage" placeholder="message" rows="10" cols="50" required=""></textarea>
						</div>                      
						<div class="form-field">
							<button class="submitform">Submit</button>
							<div id="submit-loader">
								<div class="text-loader">Sending...</div>                             
								<div class="s-loader">
									<div class="bounce1"></div>
									<div class="bounce2"></div>
									<div class="bounce3"></div>
								</div>
							</div>
						</div>
					</fieldset>
				</form> 
				<div id="message-warning"></div>            
				<div id="message-success">
				<i class="fa fa-check"></i>Your message was sent, thank you!<br>
				</div>
			</div> 
		</div> -->

		<div class="row contact-info">
			<div class="col-four tab-full">
				<div class="icon">
					<i class="icon-pin"></i>
				</div>
				<h5>Where to find me</h5>
				<p>Cavite Philippines</p>
			</div>

			<div class="col-four tab-full collapse">
				<div class="icon">
					<i class="icon-mail"></i>
				</div>
				<h5>Email Me At</h5>
				<p>iamftq@gmail.com</p>
			</div>

			<div class="col-four tab-full">
				<div class="icon">
					<i class="icon-phone"></i>
				</div>
				<h5>Call Me At</h5>
				<p>Smart/Viber: (+63) 960 339 8610</p>
			</div>
		</div> <!-- /contact-info -->
	</section> <!-- /contact -->


   <!-- footer
   ================================================== -->

   <footer>
     	<div class="row">

     		<div class="col-six tab-full pull-right social">

     			<ul class="footer-social">        
			      <li><a href=""><i class="fa-brands fa-github"></i></a></li>
			      <li><a href="https://www.linkedin.com/in/chz-qui-a82b32251" target="_blank"><i class="fa-brands fa-linkedin"></i></a></li>
			      <!-- <li><a href="#"><i class="fa fa-facebook"></i></a></li>
			      <li><a href="#"><i class="fa fa-behance"></i></a></li>
			      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
			      <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
			      <li><a href="#"><i class="fa fa-instagram"></i></a></li> -->
			   </ul> 
	      		
	      </div>

      	<div class="col-eight tab-full">
	      	<!-- <div class="copyright">
		        	<span>© Copyright 2018 </span> 
		        	<span>Design by <a href="http://www.styleshout.com/">styleshout</a></span> 
		        	<span>Distributed by <a href="https://themewagon.com/">themewagon</a></span>	         	
		         </div>	--> 	                  
	      	</div>

	      	<div id="go-top">
		         <a v-smooth-scroll class="smoothscroll" title="Back to Top" href="#top"><i class="fa fa-long-arrow-up"></i></a>
		      </div>

      	</div> <!-- /row -->     	
   </footer>  

   <!-- <div id="preloader"> 
    	<div id="loader"></div>
   </div>  -->
  </div>
</template>

<style>
.vm--modal {
	height: auto !important;
	overflow: unset !important;
}

.hooper-indicator.is-active {
	background: #81d8d0 !important;
}
.hooper-slide {
	background: white;
	display: flex;
	justify-content: center;
	flex-shrink: 0;
	height: auto !important;
}
.hooper-slide img {
	align-self: center;
	max-height: 100% !important;
}
</style>
