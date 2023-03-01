(* ::Package:: *)

(* ::Title:: *)
(*Surface Pattern Optimizer*)


(* ::Text:: *)
(*version 2.4 of June 20, 2012*)


(* ::Text:: *)
(*Copyright 2009-2012 Roman Schmied, with contributions by Janus H. Wesenberg*)


(* ::Text:: *)
(*This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.*)


(* ::Text:: *)
(*This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.*)


(* ::Text:: *)
(*You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.*)


(* ::Subsection::Closed:: *)
(*COPYING*)


(* ::Subsubsection::Closed:: *)
(*GPL v3*)


(* ::Text:: *)
(*                    GNU GENERAL PUBLIC LICENSE*)
(*                       Version 3, 29 June 2007*)
(**)
(* Copyright (C) 2007 Free Software Foundation, Inc. <http://fsf.org/>*)
(* Everyone is permitted to copy and distribute verbatim copies*)
(* of this license document, but changing it is not allowed.*)
(**)
(*                            Preamble*)
(**)
(*  The GNU General Public License is a free, copyleft license for*)
(*software and other kinds of works.*)
(**)
(*  The licenses for most software and other practical works are designed*)
(*to take away your freedom to share and change the works.  By contrast,*)
(*the GNU General Public License is intended to guarantee your freedom to*)
(*share and change all versions of a program--to make sure it remains free*)
(*software for all its users.  We, the Free Software Foundation, use the*)
(*GNU General Public License for most of our software; it applies also to*)
(*any other work released this way by its authors.  You can apply it to*)
(*your programs, too.*)
(**)
(*  When we speak of free software, we are referring to freedom, not*)
(*price.  Our General Public Licenses are designed to make sure that you*)
(*have the freedom to distribute copies of free software (and charge for*)
(*them if you wish), that you receive source code or can get it if you*)
(*want it, that you can change the software or use pieces of it in new*)
(*free programs, and that you know you can do these things.*)
(**)
(*  To protect your rights, we need to prevent others from denying you*)
(*these rights or asking you to surrender the rights.  Therefore, you have*)
(*certain responsibilities if you distribute copies of the software, or if*)
(*you modify it: responsibilities to respect the freedom of others.*)
(**)
(*  For example, if you distribute copies of such a program, whether*)
(*gratis or for a fee, you must pass on to the recipients the same*)
(*freedoms that you received.  You must make sure that they, too, receive*)
(*or can get the source code.  And you must show them these terms so they*)
(*know their rights.*)
(**)
(*  Developers that use the GNU GPL protect your rights with two steps:*)
(*(1) assert copyright on the software, and (2) offer you this License*)
(*giving you legal permission to copy, distribute and/or modify it.*)
(**)
(*  For the developers' and authors' protection, the GPL clearly explains*)
(*that there is no warranty for this free software.  For both users' and*)
(*authors' sake, the GPL requires that modified versions be marked as*)
(*changed, so that their problems will not be attributed erroneously to*)
(*authors of previous versions.*)
(**)
(*  Some devices are designed to deny users access to install or run*)
(*modified versions of the software inside them, although the manufacturer*)
(*can do so.  This is fundamentally incompatible with the aim of*)
(*protecting users' freedom to change the software.  The systematic*)
(*pattern of such abuse occurs in the area of products for individuals to*)
(*use, which is precisely where it is most unacceptable.  Therefore, we*)
(*have designed this version of the GPL to prohibit the practice for those*)
(*products.  If such problems arise substantially in other domains, we*)
(*stand ready to extend this provision to those domains in future versions*)
(*of the GPL, as needed to protect the freedom of users.*)
(**)
(*  Finally, every program is threatened constantly by software patents.*)
(*States should not allow patents to restrict development and use of*)
(*software on general-purpose computers, but in those that do, we wish to*)
(*avoid the special danger that patents applied to a free program could*)
(*make it effectively proprietary.  To prevent this, the GPL assures that*)
(*patents cannot be used to render the program non-free.*)
(**)
(*  The precise terms and conditions for copying, distribution and*)
(*modification follow.*)
(**)
(*                       TERMS AND CONDITIONS*)
(**)
(*  0. Definitions.*)
(**)
(*  "This License" refers to version 3 of the GNU General Public License.*)
(**)
(*  "Copyright" also means copyright-like laws that apply to other kinds of*)
(*works, such as semiconductor masks.*)
(**)
(*  "The Program" refers to any copyrightable work licensed under this*)
(*License.  Each licensee is addressed as "you".  "Licensees" and*)
(*"recipients" may be individuals or organizations.*)
(**)
(*  To "modify" a work means to copy from or adapt all or part of the work*)
(*in a fashion requiring copyright permission, other than the making of an*)
(*exact copy.  The resulting work is called a "modified version" of the*)
(*earlier work or a work "based on" the earlier work.*)
(**)
(*  A "covered work" means either the unmodified Program or a work based*)
(*on the Program.*)
(**)
(*  To "propagate" a work means to do anything with it that, without*)
(*permission, would make you directly or secondarily liable for*)
(*infringement under applicable copyright law, except executing it on a*)
(*computer or modifying a private copy.  Propagation includes copying,*)
(*distribution (with or without modification), making available to the*)
(*public, and in some countries other activities as well.*)
(**)
(*  To "convey" a work means any kind of propagation that enables other*)
(*parties to make or receive copies.  Mere interaction with a user through*)
(*a computer network, with no transfer of a copy, is not conveying.*)
(**)
(*  An interactive user interface displays "Appropriate Legal Notices"*)
(*to the extent that it includes a convenient and prominently visible*)
(*feature that (1) displays an appropriate copyright notice, and (2)*)
(*tells the user that there is no warranty for the work (except to the*)
(*extent that warranties are provided), that licensees may convey the*)
(*work under this License, and how to view a copy of this License.  If*)
(*the interface presents a list of user commands or options, such as a*)
(*menu, a prominent item in the list meets this criterion.*)
(**)
(*  1. Source Code.*)
(**)
(*  The "source code" for a work means the preferred form of the work*)
(*for making modifications to it.  "Object code" means any non-source*)
(*form of a work.*)
(**)
(*  A "Standard Interface" means an interface that either is an official*)
(*standard defined by a recognized standards body, or, in the case of*)
(*interfaces specified for a particular programming language, one that*)
(*is widely used among developers working in that language.*)
(**)
(*  The "System Libraries" of an executable work include anything, other*)
(*than the work as a whole, that (a) is included in the normal form of*)
(*packaging a Major Component, but which is not part of that Major*)
(*Component, and (b) serves only to enable use of the work with that*)
(*Major Component, or to implement a Standard Interface for which an*)
(*implementation is available to the public in source code form.  A*)
(*"Major Component", in this context, means a major essential component*)
(*(kernel, window system, and so on) of the specific operating system*)
(*(if any) on which the executable work runs, or a compiler used to*)
(*produce the work, or an object code interpreter used to run it.*)
(**)
(*  The "Corresponding Source" for a work in object code form means all*)
(*the source code needed to generate, install, and (for an executable*)
(*work) run the object code and to modify the work, including scripts to*)
(*control those activities.  However, it does not include the work's*)
(*System Libraries, or general-purpose tools or generally available free*)
(*programs which are used unmodified in performing those activities but*)
(*which are not part of the work.  For example, Corresponding Source*)
(*includes interface definition files associated with source files for*)
(*the work, and the source code for shared libraries and dynamically*)
(*linked subprograms that the work is specifically designed to require,*)
(*such as by intimate data communication or control flow between those*)
(*subprograms and other parts of the work.*)
(**)
(*  The Corresponding Source need not include anything that users*)
(*can regenerate automatically from other parts of the Corresponding*)
(*Source.*)
(**)
(*  The Corresponding Source for a work in source code form is that*)
(*same work.*)
(**)
(*  2. Basic Permissions.*)
(**)
(*  All rights granted under this License are granted for the term of*)
(*copyright on the Program, and are irrevocable provided the stated*)
(*conditions are met.  This License explicitly affirms your unlimited*)
(*permission to run the unmodified Program.  The output from running a*)
(*covered work is covered by this License only if the output, given its*)
(*content, constitutes a covered work.  This License acknowledges your*)
(*rights of fair use or other equivalent, as provided by copyright law.*)
(**)
(*  You may make, run and propagate covered works that you do not*)
(*convey, without conditions so long as your license otherwise remains*)
(*in force.  You may convey covered works to others for the sole purpose*)
(*of having them make modifications exclusively for you, or provide you*)
(*with facilities for running those works, provided that you comply with*)
(*the terms of this License in conveying all material for which you do*)
(*not control copyright.  Those thus making or running the covered works*)
(*for you must do so exclusively on your behalf, under your direction*)
(*and control, on terms that prohibit them from making any copies of*)
(*your copyrighted material outside their relationship with you.*)
(**)
(*  Conveying under any other circumstances is permitted solely under*)
(*the conditions stated below.  Sublicensing is not allowed; section 10*)
(*makes it unnecessary.*)
(**)
(*  3. Protecting Users' Legal Rights From Anti-Circumvention Law.*)
(**)
(*  No covered work shall be deemed part of an effective technological*)
(*measure under any applicable law fulfilling obligations under article*)
(*11 of the WIPO copyright treaty adopted on 20 December 1996, or*)
(*similar laws prohibiting or restricting circumvention of such*)
(*measures.*)
(**)
(*  When you convey a covered work, you waive any legal power to forbid*)
(*circumvention of technological measures to the extent such circumvention*)
(*is effected by exercising rights under this License with respect to*)
(*the covered work, and you disclaim any intention to limit operation or*)
(*modification of the work as a means of enforcing, against the work's*)
(*users, your or third parties' legal rights to forbid circumvention of*)
(*technological measures.*)
(**)
(*  4. Conveying Verbatim Copies.*)
(**)
(*  You may convey verbatim copies of the Program's source code as you*)
(*receive it, in any medium, provided that you conspicuously and*)
(*appropriately publish on each copy an appropriate copyright notice;*)
(*keep intact all notices stating that this License and any*)
(*non-permissive terms added in accord with section 7 apply to the code;*)
(*keep intact all notices of the absence of any warranty; and give all*)
(*recipients a copy of this License along with the Program.*)
(**)
(*  You may charge any price or no price for each copy that you convey,*)
(*and you may offer support or warranty protection for a fee.*)
(**)
(*  5. Conveying Modified Source Versions.*)
(**)
(*  You may convey a work based on the Program, or the modifications to*)
(*produce it from the Program, in the form of source code under the*)
(*terms of section 4, provided that you also meet all of these conditions:*)
(**)
(*    a) The work must carry prominent notices stating that you modified*)
(*    it, and giving a relevant date.*)
(**)
(*    b) The work must carry prominent notices stating that it is*)
(*    released under this License and any conditions added under section*)
(*    7.  This requirement modifies the requirement in section 4 to*)
(*    "keep intact all notices".*)
(**)
(*    c) You must license the entire work, as a whole, under this*)
(*    License to anyone who comes into possession of a copy.  This*)
(*    License will therefore apply, along with any applicable section 7*)
(*    additional terms, to the whole of the work, and all its parts,*)
(*    regardless of how they are packaged.  This License gives no*)
(*    permission to license the work in any other way, but it does not*)
(*    invalidate such permission if you have separately received it.*)
(**)
(*    d) If the work has interactive user interfaces, each must display*)
(*    Appropriate Legal Notices; however, if the Program has interactive*)
(*    interfaces that do not display Appropriate Legal Notices, your*)
(*    work need not make them do so.*)
(**)
(*  A compilation of a covered work with other separate and independent*)
(*works, which are not by their nature extensions of the covered work,*)
(*and which are not combined with it such as to form a larger program,*)
(*in or on a volume of a storage or distribution medium, is called an*)
(*"aggregate" if the compilation and its resulting copyright are not*)
(*used to limit the access or legal rights of the compilation's users*)
(*beyond what the individual works permit.  Inclusion of a covered work*)
(*in an aggregate does not cause this License to apply to the other*)
(*parts of the aggregate.*)
(**)
(*  6. Conveying Non-Source Forms.*)
(**)
(*  You may convey a covered work in object code form under the terms*)
(*of sections 4 and 5, provided that you also convey the*)
(*machine-readable Corresponding Source under the terms of this License,*)
(*in one of these ways:*)
(**)
(*    a) Convey the object code in, or embodied in, a physical product*)
(*    (including a physical distribution medium), accompanied by the*)
(*    Corresponding Source fixed on a durable physical medium*)
(*    customarily used for software interchange.*)
(**)
(*    b) Convey the object code in, or embodied in, a physical product*)
(*    (including a physical distribution medium), accompanied by a*)
(*    written offer, valid for at least three years and valid for as*)
(*    long as you offer spare parts or customer support for that product*)
(*    model, to give anyone who possesses the object code either (1) a*)
(*    copy of the Corresponding Source for all the software in the*)
(*    product that is covered by this License, on a durable physical*)
(*    medium customarily used for software interchange, for a price no*)
(*    more than your reasonable cost of physically performing this*)
(*    conveying of source, or (2) access to copy the*)
(*    Corresponding Source from a network server at no charge.*)
(**)
(*    c) Convey individual copies of the object code with a copy of the*)
(*    written offer to provide the Corresponding Source.  This*)
(*    alternative is allowed only occasionally and noncommercially, and*)
(*    only if you received the object code with such an offer, in accord*)
(*    with subsection 6b.*)
(**)
(*    d) Convey the object code by offering access from a designated*)
(*    place (gratis or for a charge), and offer equivalent access to the*)
(*    Corresponding Source in the same way through the same place at no*)
(*    further charge.  You need not require recipients to copy the*)
(*    Corresponding Source along with the object code.  If the place to*)
(*    copy the object code is a network server, the Corresponding Source*)
(*    may be on a different server (operated by you or a third party)*)
(*    that supports equivalent copying facilities, provided you maintain*)
(*    clear directions next to the object code saying where to find the*)
(*    Corresponding Source.  Regardless of what server hosts the*)
(*    Corresponding Source, you remain obligated to ensure that it is*)
(*    available for as long as needed to satisfy these requirements.*)
(**)
(*    e) Convey the object code using peer-to-peer transmission, provided*)
(*    you inform other peers where the object code and Corresponding*)
(*    Source of the work are being offered to the general public at no*)
(*    charge under subsection 6d.*)
(**)
(*  A separable portion of the object code, whose source code is excluded*)
(*from the Corresponding Source as a System Library, need not be*)
(*included in conveying the object code work.*)
(**)
(*  A "User Product" is either (1) a "consumer product", which means any*)
(*tangible personal property which is normally used for personal, family,*)
(*or household purposes, or (2) anything designed or sold for incorporation*)
(*into a dwelling.  In determining whether a product is a consumer product,*)
(*doubtful cases shall be resolved in favor of coverage.  For a particular*)
(*product received by a particular user, "normally used" refers to a*)
(*typical or common use of that class of product, regardless of the status*)
(*of the particular user or of the way in which the particular user*)
(*actually uses, or expects or is expected to use, the product.  A product*)
(*is a consumer product regardless of whether the product has substantial*)
(*commercial, industrial or non-consumer uses, unless such uses represent*)
(*the only significant mode of use of the product.*)
(**)
(*  "Installation Information" for a User Product means any methods,*)
(*procedures, authorization keys, or other information required to install*)
(*and execute modified versions of a covered work in that User Product from*)
(*a modified version of its Corresponding Source.  The information must*)
(*suffice to ensure that the continued functioning of the modified object*)
(*code is in no case prevented or interfered with solely because*)
(*modification has been made.*)
(**)
(*  If you convey an object code work under this section in, or with, or*)
(*specifically for use in, a User Product, and the conveying occurs as*)
(*part of a transaction in which the right of possession and use of the*)
(*User Product is transferred to the recipient in perpetuity or for a*)
(*fixed term (regardless of how the transaction is characterized), the*)
(*Corresponding Source conveyed under this section must be accompanied*)
(*by the Installation Information.  But this requirement does not apply*)
(*if neither you nor any third party retains the ability to install*)
(*modified object code on the User Product (for example, the work has*)
(*been installed in ROM).*)
(**)
(*  The requirement to provide Installation Information does not include a*)
(*requirement to continue to provide support service, warranty, or updates*)
(*for a work that has been modified or installed by the recipient, or for*)
(*the User Product in which it has been modified or installed.  Access to a*)
(*network may be denied when the modification itself materially and*)
(*adversely affects the operation of the network or violates the rules and*)
(*protocols for communication across the network.*)
(**)
(*  Corresponding Source conveyed, and Installation Information provided,*)
(*in accord with this section must be in a format that is publicly*)
(*documented (and with an implementation available to the public in*)
(*source code form), and must require no special password or key for*)
(*unpacking, reading or copying.*)
(**)
(*  7. Additional Terms.*)
(**)
(*  "Additional permissions" are terms that supplement the terms of this*)
(*License by making exceptions from one or more of its conditions.*)
(*Additional permissions that are applicable to the entire Program shall*)
(*be treated as though they were included in this License, to the extent*)
(*that they are valid under applicable law.  If additional permissions*)
(*apply only to part of the Program, that part may be used separately*)
(*under those permissions, but the entire Program remains governed by*)
(*this License without regard to the additional permissions.*)
(**)
(*  When you convey a copy of a covered work, you may at your option*)
(*remove any additional permissions from that copy, or from any part of*)
(*it.  (Additional permissions may be written to require their own*)
(*removal in certain cases when you modify the work.)  You may place*)
(*additional permissions on material, added by you to a covered work,*)
(*for which you have or can give appropriate copyright permission.*)
(**)
(*  Notwithstanding any other provision of this License, for material you*)
(*add to a covered work, you may (if authorized by the copyright holders of*)
(*that material) supplement the terms of this License with terms:*)
(**)
(*    a) Disclaiming warranty or limiting liability differently from the*)
(*    terms of sections 15 and 16 of this License; or*)
(**)
(*    b) Requiring preservation of specified reasonable legal notices or*)
(*    author attributions in that material or in the Appropriate Legal*)
(*    Notices displayed by works containing it; or*)
(**)
(*    c) Prohibiting misrepresentation of the origin of that material, or*)
(*    requiring that modified versions of such material be marked in*)
(*    reasonable ways as different from the original version; or*)
(**)
(*    d) Limiting the use for publicity purposes of names of licensors or*)
(*    authors of the material; or*)
(**)
(*    e) Declining to grant rights under trademark law for use of some*)
(*    trade names, trademarks, or service marks; or*)
(**)
(*    f) Requiring indemnification of licensors and authors of that*)
(*    material by anyone who conveys the material (or modified versions of*)
(*    it) with contractual assumptions of liability to the recipient, for*)
(*    any liability that these contractual assumptions directly impose on*)
(*    those licensors and authors.*)
(**)
(*  All other non-permissive additional terms are considered "further*)
(*restrictions" within the meaning of section 10.  If the Program as you*)
(*received it, or any part of it, contains a notice stating that it is*)
(*governed by this License along with a term that is a further*)
(*restriction, you may remove that term.  If a license document contains*)
(*a further restriction but permits relicensing or conveying under this*)
(*License, you may add to a covered work material governed by the terms*)
(*of that license document, provided that the further restriction does*)
(*not survive such relicensing or conveying.*)
(**)
(*  If you add terms to a covered work in accord with this section, you*)
(*must place, in the relevant source files, a statement of the*)
(*additional terms that apply to those files, or a notice indicating*)
(*where to find the applicable terms.*)
(**)
(*  Additional terms, permissive or non-permissive, may be stated in the*)
(*form of a separately written license, or stated as exceptions;*)
(*the above requirements apply either way.*)
(**)
(*  8. Termination.*)
(**)
(*  You may not propagate or modify a covered work except as expressly*)
(*provided under this License.  Any attempt otherwise to propagate or*)
(*modify it is void, and will automatically terminate your rights under*)
(*this License (including any patent licenses granted under the third*)
(*paragraph of section 11).*)
(**)
(*  However, if you cease all violation of this License, then your*)
(*license from a particular copyright holder is reinstated (a)*)
(*provisionally, unless and until the copyright holder explicitly and*)
(*finally terminates your license, and (b) permanently, if the copyright*)
(*holder fails to notify you of the violation by some reasonable means*)
(*prior to 60 days after the cessation.*)
(**)
(*  Moreover, your license from a particular copyright holder is*)
(*reinstated permanently if the copyright holder notifies you of the*)
(*violation by some reasonable means, this is the first time you have*)
(*received notice of violation of this License (for any work) from that*)
(*copyright holder, and you cure the violation prior to 30 days after*)
(*your receipt of the notice.*)
(**)
(*  Termination of your rights under this section does not terminate the*)
(*licenses of parties who have received copies or rights from you under*)
(*this License.  If your rights have been terminated and not permanently*)
(*reinstated, you do not qualify to receive new licenses for the same*)
(*material under section 10.*)
(**)
(*  9. Acceptance Not Required for Having Copies.*)
(**)
(*  You are not required to accept this License in order to receive or*)
(*run a copy of the Program.  Ancillary propagation of a covered work*)
(*occurring solely as a consequence of using peer-to-peer transmission*)
(*to receive a copy likewise does not require acceptance.  However,*)
(*nothing other than this License grants you permission to propagate or*)
(*modify any covered work.  These actions infringe copyright if you do*)
(*not accept this License.  Therefore, by modifying or propagating a*)
(*covered work, you indicate your acceptance of this License to do so.*)
(**)
(*  10. Automatic Licensing of Downstream Recipients.*)
(**)
(*  Each time you convey a covered work, the recipient automatically*)
(*receives a license from the original licensors, to run, modify and*)
(*propagate that work, subject to this License.  You are not responsible*)
(*for enforcing compliance by third parties with this License.*)
(**)
(*  An "entity transaction" is a transaction transferring control of an*)
(*organization, or substantially all assets of one, or subdividing an*)
(*organization, or merging organizations.  If propagation of a covered*)
(*work results from an entity transaction, each party to that*)
(*transaction who receives a copy of the work also receives whatever*)
(*licenses to the work the party's predecessor in interest had or could*)
(*give under the previous paragraph, plus a right to possession of the*)
(*Corresponding Source of the work from the predecessor in interest, if*)
(*the predecessor has it or can get it with reasonable efforts.*)
(**)
(*  You may not impose any further restrictions on the exercise of the*)
(*rights granted or affirmed under this License.  For example, you may*)
(*not impose a license fee, royalty, or other charge for exercise of*)
(*rights granted under this License, and you may not initiate litigation*)
(*(including a cross-claim or counterclaim in a lawsuit) alleging that*)
(*any patent claim is infringed by making, using, selling, offering for*)
(*sale, or importing the Program or any portion of it.*)
(**)
(*  11. Patents.*)
(**)
(*  A "contributor" is a copyright holder who authorizes use under this*)
(*License of the Program or a work on which the Program is based.  The*)
(*work thus licensed is called the contributor's "contributor version".*)
(**)
(*  A contributor's "essential patent claims" are all patent claims*)
(*owned or controlled by the contributor, whether already acquired or*)
(*hereafter acquired, that would be infringed by some manner, permitted*)
(*by this License, of making, using, or selling its contributor version,*)
(*but do not include claims that would be infringed only as a*)
(*consequence of further modification of the contributor version.  For*)
(*purposes of this definition, "control" includes the right to grant*)
(*patent sublicenses in a manner consistent with the requirements of*)
(*this License.*)
(**)
(*  Each contributor grants you a non-exclusive, worldwide, royalty-free*)
(*patent license under the contributor's essential patent claims, to*)
(*make, use, sell, offer for sale, import and otherwise run, modify and*)
(*propagate the contents of its contributor version.*)
(**)
(*  In the following three paragraphs, a "patent license" is any express*)
(*agreement or commitment, however denominated, not to enforce a patent*)
(*(such as an express permission to practice a patent or covenant not to*)
(*sue for patent infringement).  To "grant" such a patent license to a*)
(*party means to make such an agreement or commitment not to enforce a*)
(*patent against the party.*)
(**)
(*  If you convey a covered work, knowingly relying on a patent license,*)
(*and the Corresponding Source of the work is not available for anyone*)
(*to copy, free of charge and under the terms of this License, through a*)
(*publicly available network server or other readily accessible means,*)
(*then you must either (1) cause the Corresponding Source to be so*)
(*available, or (2) arrange to deprive yourself of the benefit of the*)
(*patent license for this particular work, or (3) arrange, in a manner*)
(*consistent with the requirements of this License, to extend the patent*)
(*license to downstream recipients.  "Knowingly relying" means you have*)
(*actual knowledge that, but for the patent license, your conveying the*)
(*covered work in a country, or your recipient's use of the covered work*)
(*in a country, would infringe one or more identifiable patents in that*)
(*country that you have reason to believe are valid.*)
(**)
(*  If, pursuant to or in connection with a single transaction or*)
(*arrangement, you convey, or propagate by procuring conveyance of, a*)
(*covered work, and grant a patent license to some of the parties*)
(*receiving the covered work authorizing them to use, propagate, modify*)
(*or convey a specific copy of the covered work, then the patent license*)
(*you grant is automatically extended to all recipients of the covered*)
(*work and works based on it.*)
(**)
(*  A patent license is "discriminatory" if it does not include within*)
(*the scope of its coverage, prohibits the exercise of, or is*)
(*conditioned on the non-exercise of one or more of the rights that are*)
(*specifically granted under this License.  You may not convey a covered*)
(*work if you are a party to an arrangement with a third party that is*)
(*in the business of distributing software, under which you make payment*)
(*to the third party based on the extent of your activity of conveying*)
(*the work, and under which the third party grants, to any of the*)
(*parties who would receive the covered work from you, a discriminatory*)
(*patent license (a) in connection with copies of the covered work*)
(*conveyed by you (or copies made from those copies), or (b) primarily*)
(*for and in connection with specific products or compilations that*)
(*contain the covered work, unless you entered into that arrangement,*)
(*or that patent license was granted, prior to 28 March 2007.*)
(**)
(*  Nothing in this License shall be construed as excluding or limiting*)
(*any implied license or other defenses to infringement that may*)
(*otherwise be available to you under applicable patent law.*)
(**)
(*  12. No Surrender of Others' Freedom.*)
(**)
(*  If conditions are imposed on you (whether by court order, agreement or*)
(*otherwise) that contradict the conditions of this License, they do not*)
(*excuse you from the conditions of this License.  If you cannot convey a*)
(*covered work so as to satisfy simultaneously your obligations under this*)
(*License and any other pertinent obligations, then as a consequence you may*)
(*not convey it at all.  For example, if you agree to terms that obligate you*)
(*to collect a royalty for further conveying from those to whom you convey*)
(*the Program, the only way you could satisfy both those terms and this*)
(*License would be to refrain entirely from conveying the Program.*)
(**)
(*  13. Use with the GNU Affero General Public License.*)
(**)
(*  Notwithstanding any other provision of this License, you have*)
(*permission to link or combine any covered work with a work licensed*)
(*under version 3 of the GNU Affero General Public License into a single*)
(*combined work, and to convey the resulting work.  The terms of this*)
(*License will continue to apply to the part which is the covered work,*)
(*but the special requirements of the GNU Affero General Public License,*)
(*section 13, concerning interaction through a network will apply to the*)
(*combination as such.*)
(**)
(*  14. Revised Versions of this License.*)
(**)
(*  The Free Software Foundation may publish revised and/or new versions of*)
(*the GNU General Public License from time to time.  Such new versions will*)
(*be similar in spirit to the present version, but may differ in detail to*)
(*address new problems or concerns.*)
(**)
(*  Each version is given a distinguishing version number.  If the*)
(*Program specifies that a certain numbered version of the GNU General*)
(*Public License "or any later version" applies to it, you have the*)
(*option of following the terms and conditions either of that numbered*)
(*version or of any later version published by the Free Software*)
(*Foundation.  If the Program does not specify a version number of the*)
(*GNU General Public License, you may choose any version ever published*)
(*by the Free Software Foundation.*)
(**)
(*  If the Program specifies that a proxy can decide which future*)
(*versions of the GNU General Public License can be used, that proxy's*)
(*public statement of acceptance of a version permanently authorizes you*)
(*to choose that version for the Program.*)
(**)
(*  Later license versions may give you additional or different*)
(*permissions.  However, no additional obligations are imposed on any*)
(*author or copyright holder as a result of your choosing to follow a*)
(*later version.*)
(**)
(*  15. Disclaimer of Warranty.*)
(**)
(*  THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY*)
(*APPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT*)
(*HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY*)
(*OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO,*)
(*THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR*)
(*PURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM*)
(*IS WITH YOU.  SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF*)
(*ALL NECESSARY SERVICING, REPAIR OR CORRECTION.*)
(**)
(*  16. Limitation of Liability.*)
(**)
(*  IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING*)
(*WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR CONVEYS*)
(*THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY*)
(*GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE*)
(*USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF*)
(*DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD*)
(*PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS),*)
(*EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF*)
(*SUCH DAMAGES.*)
(**)
(*  17. Interpretation of Sections 15 and 16.*)
(**)
(*  If the disclaimer of warranty and limitation of liability provided*)
(*above cannot be given local legal effect according to their terms,*)
(*reviewing courts shall apply local law that most closely approximates*)
(*an absolute waiver of all civil liability in connection with the*)
(*Program, unless a warranty or assumption of liability accompanies a*)
(*copy of the Program in return for a fee.*)
(**)
(*                     END OF TERMS AND CONDITIONS*)
(**)
(*            How to Apply These Terms to Your New Programs*)
(**)
(*  If you develop a new program, and you want it to be of the greatest*)
(*possible use to the public, the best way to achieve this is to make it*)
(*free software which everyone can redistribute and change under these terms.*)
(**)
(*  To do so, attach the following notices to the program.  It is safest*)
(*to attach them to the start of each source file to most effectively*)
(*state the exclusion of warranty; and each file should have at least*)
(*the "copyright" line and a pointer to where the full notice is found.*)
(**)
(*    <one line to give the program's name and a brief idea of what it does.>*)
(*    Copyright (C) <year>  <name of author>*)
(**)
(*    This program is free software: you can redistribute it and/or modify*)
(*    it under the terms of the GNU General Public License as published by*)
(*    the Free Software Foundation, either version 3 of the License, or*)
(*    (at your option) any later version.*)
(**)
(*    This program is distributed in the hope that it will be useful,*)
(*    but WITHOUT ANY WARRANTY; without even the implied warranty of*)
(*    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the*)
(*    GNU General Public License for more details.*)
(**)
(*    You should have received a copy of the GNU General Public License*)
(*    along with this program.  If not, see <http://www.gnu.org/licenses/>.*)
(**)
(*Also add information on how to contact you by electronic and paper mail.*)
(**)
(*  If the program does terminal interaction, make it output a short*)
(*notice like this when it starts in an interactive mode:*)
(**)
(*    <program>  Copyright (C) <year>  <name of author>*)
(*    This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.*)
(*    This is free software, and you are welcome to redistribute it*)
(*    under certain conditions; type `show c' for details.*)
(**)
(*The hypothetical commands `show w' and `show c' should show the appropriate*)
(*parts of the General Public License.  Of course, your program's commands*)
(*might be different; for a GUI interface, you would use an "about box".*)
(**)
(*  You should also get your employer (if you work as a programmer) or school,*)
(*if any, to sign a "copyright disclaimer" for the program, if necessary.*)
(*For more information on this, and how to apply and follow the GNU GPL, see*)
(*<http://www.gnu.org/licenses/>.*)
(**)
(*  The GNU General Public License does not permit incorporating your program*)
(*into proprietary programs.  If your program is a subroutine library, you*)
(*may consider it more useful to permit linking proprietary applications with*)
(*the library.  If this is what you want to do, use the GNU Lesser General*)
(*Public License instead of this License.  But first, please read*)
(*<http://www.gnu.org/philosophy/why-not-lgpl.html>.*)


(* ::Subsection:: *)
(*CITING*)


(* ::Text:: *)
(*Whenever you publish scientific work which makes use of this package or any of the provided demos, you must add the following references:*)
(*- For any application: Roman Schmied, SurfacePattern software package.*)
(*- For any application of the "backward" (optimization) algorithm: Ref. [2]*)
(*- For surface-electrode applications (e.g., surface-electrode ion traps): Refs. [1] and[2]*)
(*- For surface-magnetization applications (e.g., patterned permanently-magnetized thin films or patterned wires): Ref. [3]*)


(* ::Text:: *)
(*For further information, please go to this web page:*)
(*http://atom.physik.unibas.ch/people/romanschmied/code/SurfacePattern.php*)


(* ::Text:: *)
(*references:*)
(*- field calculations: [4,5,6]*)
(*- optimization method: [2,3]*)


(* ::Text:: *)
(*[1] R. Schmied, "Electrostatics of gapped and finite surface electrodes", New J. Phys. 12:023038 (2010), http://dx.doi.org/10.1088/1367-2630/12/2/023038*)
(*[2] R. Schmied, J. H. Wesenberg, and D. Leibfried, "Optimal Surface-Electrode Trap Lattices for Quantum Simulation with Trapped Ions", PRL 102:233002 (2009), http://dx.doi.org/10.1103/PhysRevLett.102.233002*)
(*[3] R. Schmied, D. Leibfried, R. J. C. Spreeuw, and S. Whitlock, "Optimized magnetic lattices for ultracold atomic ensembles", New J. Phys. 12:103029 (2010), http://dx.doi.org/10.1088/1367-2630/12/10/103029*)
(*[4] M. H. Oliveira and J. A. Miranda, "Biot-Savart-like law in electrostatics", Eur. J. Phys. 22:31 (2001), http://dx.doi.org/10.1088/0143-0807/22/1/304*)
(*[5] J. D. Hanson and S. P. Hirshman, "Compact expressions for the Biot\[Dash]Savart fields of a filamentary segment", Physics of Plasmas 9:4410 (2002), http://dx.doi.org/10.1063/1.1507589*)
(*[6] A. van Oosterom and J. Strackee, "The Solid Angle of a Plane Triangle", IEEE Transactions on Biomedical Engineering BME-30,2:125 (1983), http://dx.doi.org/10.1109/TBME.1983.325207*)


(* ::Section:: *)
(*usage instructions*)


(* ::Subsection::Closed:: *)
(*OptimalPeriodicPattern*)


(* ::Text:: *)
(*OptimalPeriodicPattern[basis, n, P, F]*)
(*	compute the optimal binary pattern satisfying all the constraints*)


(* ::Subsubsection:: *)
(*parameter: basis*)


(* ::Text:: *)
(*basis={{ax,ay},{bx,by}} specifies two basis vectors a={ax,ay} and b={bx,by} defining the parallelogram-shaped unit cell which covers the entire xy plane. The pattern is assumed to fill this plane with wallpaper symmetry group p1.*)


(* ::Subsubsection:: *)
(*parameter: n*)


(* ::Text:: *)
(*The optimized pattern will have a resolution of n*n pixels per unit cell. In general the calculation scales as O(n^2) in both time and memory.*)


(* ::Subsubsection:: *)
(*parameter: P*)


(* ::Text:: *)
(*P contains a list of points where local constraints on the potential and its derivatives are specified. Each point is specified with three Cartesian coordinates. The points do not need to lie in a particular unit cell.*)


(* ::Text:: *)
(*Specify points as {{x,y,z}} or {{x,y,z}, d0} or {{x,y,z}, d0, d1} or {{x,y,z}, d0, d1, d2} or {{x,y,z}, d0, d1, d2, d3}, where*)
(*	- d0 is the potential at the point (x,y,z)*)
(*	- d1 is the first-derivative vector*)
(*	- d2 is the second-derivative matrix*)
(*	- d3 is the third-derivative tensor*)


(* ::Text:: *)
(*If the coordinates of a point are specified as {x,y,z} the local coordinate system is assumed to be the lab frame; if it is given by {{x,y,z},M} with M a 3*3 matrix, then the local coordinate system is assumed to be rotated by the matrix M. We define the matrix M such that a point {x',y',z'} in the local coordinate system corresponds to the point {x,y,z}+M.{x',y',z'} in the lab frame.*)


(* ::Text:: *)
(*All derivatives are expressed in the local frames attached to their respective points in P.*)


(* ::Text:: *)
(*Only the derivative components with indices in ascending order are used (others given by symmetry).*)


(* ::Text:: *)
(*d0 is one of the following:*)
(*	- Automatic will leave the potential at the corresponding point unconstrained*)
(*	- a real number will constrain the potential at the corresponding point to this value*)
(*	- a pair {r,-1} constrains the potential at the corresponding point to be less than r*)
(*	- a pair {r,0} constrains the potential at the corresponding point to be equal to r (same as just specifying r)*)
(*	- a pair {r,1} constrains the potential at the corresponding point to be larger than r*)


(* ::Text:: *)
(*d1 is either Automatic or a 3-list of specifiers as given under d0*)


(* ::Text:: *)
(*d2 is either Automatic or a 3x3-matrix of specifiers as given under d0. If there are constraints that violate the Laplace equation, then they are replaced by better constraints which don't (a warning is given). For the second derivatives this means setting \[Delta]zz=Automatic.*)


(* ::Text:: *)
(*d3 is either Automatic or a 3x3x3-tensor of specifiers as given under d0. If there are constraints that violate the Laplace equation, then they are replaced by better constraints which don't (a warning is given). For third derivatives this means setting \[Delta]xxx=Automatic or \[Delta]yyy=Automatic or \[Delta]zzz=Automatic.*)


(* ::Subsubsection:: *)
(*parameter: F*)


(* ::Text:: *)
(*Fourier components of the pattern can be constrained directly. The parameter F is a list of Fourier amplitude specifications of the form {{k1,k2},f} specifying the amplitude of the mode E^(2\[Pi]i{k1,k2}\[CenterDot]{a1,a2}) where k={k1,k2} is a vector expressed in terms of the reciprocal lattice vectors (Inverse[basis]\[Transpose]) and a={a1,a2} is expressed in terms of the real-space lattice vectors (basis).*)


(* ::Text:: *)
(*Just like the potential and derivative constraints, the amplitudes f can be specified either as real numbers or in the form {f,\[PlusMinus]1} to make inequality constraints.*)


(* ::Subsubsection:: *)
(*option: FourierResolution*)


(* ::Text:: *)
(*The three-dimensional potential is calculated from the Fourier transform of the pattern using s plane waves in each direction of the reciprocal lattice. "Automatic" picks s=n.*)


(* ::Subsubsection:: *)
(*option: CoverPlane*)


(* ::Text:: *)
(*If a cover plane height other than \[Infinity] is specified, the potential is assumed to be forced to zero on the entire plane at this height above the pattern.*)


(* ::Subsubsection:: *)
(*options: EqualD0, EqualD1, EqualD2, EqualD3*)


(* ::Text:: *)
(*These options allow constraining the potential (EqualD0) or its derivatives (EqualD1...EqualD3) to be equal at all specfied points in P without specifying their actual values. Possible values are:*)
(*-	False:		no constraints*)
(*-	LabFrame:	derivatives are equal in the lab (global) frame*)
(*-	LocalFrame:	derivatives are equal in the local frames*)
(*-	True:		for EqualD0 there is no difference between the frames; specifying "True" is thus unambiguous*)


(* ::Subsubsection:: *)
(*options: Method and Tolerance*)


(* ::Text:: *)
(*The options Method and Tolerance are passed on to the LinearProgramming subroutine. By default OptimalPattern uses the interior point method for solving the linear program, and a tolerance of 10^-6.*)


(* ::Subsubsection:: *)
(*option: PixelRange*)


(* ::Text:: *)
(*PixelRange->{min,max} specifies the range in which the optimized pixel potential will come to lie. The default value is {0,1}.*)


(* ::Subsubsection:: *)
(*option: PixelConstraints*)


(* ::Text:: *)
(*The default PixelConstraints->Automatic specifies that all pixel values should lie within the bounds specified by the PixelRange option. Alternatively, for each pixel an individual constraint can be specified by setting PixelConstraints->{p1,p2,p3,...}:*)
(*- Automatic sets the constraints to those given by PixelRange*)
(*- {l,u} specifies lower and upper bounds on the potential for the given pixel*)


(* ::Subsubsection:: *)
(*option: ExtraConstraints*)


(* ::Text:: *)
(*General linear conditions on the pixel potentials are specified as {{{c11,c12,c13,...},e1}, {{c21,c22,c23,...},e1},...}, constraining c1.\[Phi]=e1, c2.\[Phi]=e2 etc. Alternatively, the values e can be replaced by {r,\[PlusMinus]1} as specified for d0 above.*)


(* ::Subsubsection:: *)
(*output:*)


(* ::Text:: *)
(*{\[Phi],C,{basis,n,P,F},options}*)


(* ::Text:: *)
(*The return value is a matrix \[Phi]=Table[p[i,j],{i,n},{j,n}] consisting of potential values 0<=p[i,j]<=1 (or whatever is specified in the PixelRange option). Each pixel (i,j) in the unit cell is a parallelepiped with corners {({i-1,j-1}/n).basis,({i,j-1}/n).basis,({i,j}/n).basis,({i-1,j}/n).basis} and uniform potential p[i,j]. C is the optimized prefactor.*)


(* ::Text:: *)
(*The parameters and options used for generating the pattern are also in the output*)


(* ::Subsection::Closed:: *)
(*ComputePeriodicPotential*)


(* ::Text:: *)
(*ComputePeriodicPotential[d, basis, {x,y,z}, \[Phi]]*)
(*	given a pattern \[Phi] compute the potential and its derivatives at the point {x,y,z}*)


(* ::Subsubsection:: *)
(*parameter: basis*)


(* ::Text:: *)
(*basis={{ax,ay},{bx,by}} specifies two basis vectors a={ax,ay} and b={bx,by} defining the parallelogram-shaped unit cell which covers the entire xy plane. The pattern is assumed to fill this plane with wallpaper symmetry group p1.*)


(* ::Subsubsection:: *)
(*parameter: d*)


(* ::Text:: *)
(*With this parameter the derivative level is determined:*)
(*d=0 computes the potential*)
(*d=1 computes the first derivatives*)
(*d=2 computes the second derivatives*)
(*d=3 computes the third derivatives*)


(* ::Subsubsection:: *)
(*parameter: {x,y,z}*)


(* ::Text:: *)
(*These are the coordinates of the point where we wish to calculate the potential or its derivatives.*)


(* ::Subsubsection:: *)
(*parameter: \[Phi]*)


(* ::Text:: *)
(*The surface pattern, as returned by OptimalPattern[...][[1]], for which we want the potential or its derivatives.*)


(* ::Subsubsection:: *)
(*option: FourierResolution*)


(* ::Text:: *)
(*The three-dimensional potential is calculated from the Fourier transform of the pattern using s plane waves in each direction of the reciprocal lattice. "Automatic" picks s=n.*)


(* ::Subsubsection:: *)
(*option: CoverPlane*)


(* ::Text:: *)
(*If a cover plane height other than \[Infinity] is specified, the potential is assumed to be forced to zero on the entire plane at this height above the pattern.*)


(* ::Subsection::Closed:: *)
(*PlotPeriodicPattern*)


(* ::Text:: *)
(*PlotPeriodicPattern[\[Phi], {{xmin,xmax,xstep},{ymin,ymax,ystep}}]*)
(*	make a 2D plot of a pattern \[Phi] within the given region. The pattern is sampled on a square grid and plotted as such; this is very much faster than plotting the actual parallelepiped pixels.*)


(* ::Subsubsection:: *)
(*parameter: \[Phi]*)


(* ::Text:: *)
(*The surface pattern, and other parameters, in a structure as returned by OptimalPattern[...]*)


(* ::Subsubsection:: *)
(*parameters: {{xmin,xmax,xstep},{ymin,ymax,ystep}}*)


(* ::Text:: *)
(*The pattern is evaluated on a 2D grid specified by its corner coordinates and step sizes.*)


(* ::Subsection::Closed:: *)
(*OptimalFinitePattern*)


(* ::Text:: *)
(*OptimalFinitePattern[px, P]*)
(*	compute the optimal structure on the pixels px satisfying all the constraints*)


(* ::Subsubsection:: *)
(*parameter: px*)


(* ::Text:: *)
(*px contains a list of pixels whose potential is to be adjusted in the optimization. Each pixel specification must be of one of the forms described in ComputeFinitePotential.*)


(* ::Subsubsection:: *)
(*parameter: P*)


(* ::Text:: *)
(*P contains a list of points where local constraints on the potential and its derivatives are specified. Each point is specified with three Cartesian coordinates. The points do not need to lie in a particular unit cell.*)


(* ::Text:: *)
(*Specify points as {{x,y,z}} or {{x,y,z}, d0} or {{x,y,z}, d0, d1} or {{x,y,z}, d0, d1, d2} or {{x,y,z}, d0, d1, d2, d3} or {{x,y,z}, d0, d1, d2, d3, d4} or {{x,y,z}, d0, d1, d2, d3, d4, d5}, where*)
(*	- d0 is the potential at the point (x,y,z)*)
(*	- d1 is the first-derivative vector*)
(*	- d2 is the second-derivative matrix*)
(*	- d3 is the third-derivative tensor*)
(*	- d4 is the fourth-derivative tensor*)
(*	- d5 is the fifth-derivative tensor*)


(* ::Text:: *)
(*If the coordinates of a point are specified as {x,y,z} the local coordinate system is assumed to be the lab frame; if it is given by {{x,y,z},M} with M a 3*3 matrix, then the local coordinate system is assumed to be rotated by the matrix M. We define the matrix M such that a point {x',y',z'} in the local coordinate system corresponds to the point {x,y,z}+M.{x',y',z'} in the lab frame.*)


(* ::Text:: *)
(*All derivatives are expressed in the local frames attached to their respective points in P.*)


(* ::Text:: *)
(*Only the derivative components with indices in ascending order are used (others given by symmetry).*)


(* ::Text:: *)
(*d0 is one of the following:*)
(*	- Automatic will leave the potential at the corresponding point unconstrained*)
(*	- a real number will constrain the potential at the corresponding point to this value*)
(*	- a pair {r,-1} constrains the potential at the corresponding point to be less than r*)
(*	- a pair {r,0} constrains the potential at the corresponding point to be equal to r (same as just specifying r)*)
(*	- a pair {r,1} constrains the potential at the corresponding point to be larger than r*)


(* ::Text:: *)
(*d1 is either Automatic or a 3-list of specifiers as given under d0*)


(* ::Text:: *)
(*d2 is either Automatic or a 3x3-matrix of specifiers as given under d0. If there are constraints that violate the Laplace equation, then they are replaced by better constraints which don't (a warning is given). For the second derivatives this means setting \[Delta]zz=Automatic.*)


(* ::Text:: *)
(*d3 is either Automatic or a 3x3x3-tensor of specifiers as given under d0. If there are constraints that violate the Laplace equation, then they are replaced by better constraints which don't (a warning is given). For third derivatives this means setting \[Delta]xxx=Automatic or \[Delta]yyy=Automatic or \[Delta]zzz=Automatic.*)


(* ::Text:: *)
(*d4 is either Automatic or a 3x3x3x3-tensor of specifiers as given under d0. If there are constraints that violate the Laplace equation, then they are replaced by better constraints which don't (a warning is given).*)


(* ::Text:: *)
(*d5 is either Automatic or a 3x3x3x3x3-tensor of specifiers as given under d0. If there are constraints that violate the Laplace equation, then they are replaced by better constraints which don't (a warning is given).*)


(* ::Subsubsection:: *)
(*option: CoverPlane*)


(* ::Text:: *)
(*If a cover plane is specified as {h,nmax}, then the potential is assumed to be forced to zero on the entire plane at height h above the structure. The parameter nmax is an integer specifying the accuracy of the numerical approximation to the cover-plane Green's function.*)


(* ::Subsubsection:: *)
(*option: FastPotential*)


(* ::Text:: *)
(*With the option FastPotential->True the pixel (or pixel assembly) is replaced by a point with equal center-of-mass and equal weight. This can speed up the calculation dramatically.*)


(* ::Subsubsection:: *)
(*options: EqualD0, EqualD1, EqualD2, EqualD3, EqualD4, EqualD5*)


(* ::Text:: *)
(*These options allow constraining the potential (EqualD0) or its derivatives (EqualD1...EqualD5) to be equal at all specfied points in P without specifying their actual values. Possible values are:*)
(*	False:		no constraints*)
(*	LabFrame:	derivatives are equal in the lab (global) frame*)
(*	LocalFrame:	derivatives are equal in the local frames*)
(*	True:		for EqualD0 there is no difference between the frames; specifying "True" is thus unambiguous*)


(* ::Subsubsection:: *)
(*options: Method and Tolerance*)


(* ::Text:: *)
(*The options Method and Tolerance are passed on to the LinearProgramming subroutine. By default OptimalPattern uses the interior point method for solving the linear program, and a tolerance of 10^-6.*)


(* ::Subsubsection:: *)
(*option: PixelRange*)


(* ::Text:: *)
(*PixelRange->{min,max} specifies the range in which the optimized pixel potential will come to lie. The default value is {0,1}.*)


(* ::Subsubsection:: *)
(*option: PixelConstraints*)


(* ::Text:: *)
(*The default PixelConstraints->Automatic specifies that all pixel values should lie within the bounds specified by the PixelRange option. Alternatively, for each pixel an individual constraint can be specified by setting PixelConstraints->{p1,p2,p3,...}:*)
(*- Automatic sets the constraints to those given by PixelRange*)
(*- {l,u} specifies lower and upper bounds on the potential for the given pixel*)


(* ::Subsubsection:: *)
(*option: ExtraConstraints*)


(* ::Text:: *)
(*General linear conditions on the pixel potentials are specified as {{{c11,c12,c13,...},e1}, {{c21,c22,c23,...},e1},...}, constraining c1.\[Phi]=e1, c2.\[Phi]=e2 etc. Alternatively, the values e can be replaced by {r,\[PlusMinus]1} as specified for d0 above.*)


(* ::Subsubsection:: *)
(*output:*)


(* ::Text:: *)
(*{\[Phi],C,{pixels,P},options}*)


(* ::Text:: *)
(*The return value is a list of potential values 0<=\[Phi][i,j]<=1 (or whatever is specified in the PixelRange option). C is the optimized prefactor.*)


(* ::Text:: *)
(*The parameters and options used for generating the pattern are also in the output*)


(* ::Subsection::Closed:: *)
(*ComputeFinitePotential*)


(* ::Text:: *)
(*ComputeFinitePotential[d, \[CapitalLambda], {x,y,z}]*)
(*	computes the potential at {x,y,z} generated by a pixel \[CapitalLambda] in the xy plane.*)
(*	d=0 gives the potential; d=1..5 give the first to fifth spatial derivative tensors.*)


(* ::Subsubsection:: *)
(*parameter: d*)


(* ::Text:: *)
(*d=0 gives the potential*)
(*d=1 gives the vector of first spatial derivatives*)
(*d=2 gives the matrix of second spatial derivatives*)
(*d=3 gives the tensor of third spatial derivatives*)
(*d=4 gives the tensor of fourth spatial derivatives*)
(*d=5 gives the tensor of fifth spatial derivatives*)


(* ::Subsubsection:: *)
(*parameter: \[CapitalLambda]*)


(* ::Text:: *)
(*The pixel can be specified in either of four formats:*)


(* ::Text:: *)
(*DiscPixel[{x,y},r] describes a disc-shaped pixel centered at (x,y) and with radius r. On the disc the potential is 1; outside of it (in-plane) the potential is 0.*)


(* ::Text:: *)
(*PolygonPixel[{{x1,y1},{x2,y2},{x3,y3},...,{xn,yn}}] describes a closed polygon in the xy plane in which the potential is 1; outside of it (in-plane) the potential is 0. The polygon must be oriented counter-clockwise. Points can alternatively be given as InfPoint[\[Alpha]] signifying a ray going to infinity in the direction {cos \[Alpha],sin \[Alpha]}.*)


(* ::Text:: *)
(*PointPixel[{x,y},a] describes a far-field approximation (for speedier calculations) of the above pixels: (x,y) is the center of the pixel, and a its surface area.*)


(* ::Text:: *)
(*{P1,P2,P3,...} describes a set of pixels, each of which is in one of these forms given above. The potential is the sum over all of these pixels. Recursive: lists of lists of lists... of pixels are possible.*)


(* ::Subsubsection:: *)
(*option: CoverPlane*)


(* ::Text:: *)
(*If a cover plane is specified as {h,nmax}, then the potential is assumed to be forced to zero on the entire plane at height h above the structure. The parameter nmax is an integer specifying the accuracy of the numerical approximation to the cover-plane Green's function.*)


(* ::Subsubsection:: *)
(*option: FastPotential*)


(* ::Text:: *)
(*With the option FastPotential->True the pixel (or pixel assembly) is replaced by a point with equal center-of-mass and equal weight. This can speed up the calculation dramatically.*)


(* ::Subsection::Closed:: *)
(*PixelGraphics*)


(* ::Text:: *)
(*PixelGraphics[\[CapitalLambda]]*)
(*	converts a pixel specification (as described in ComputeFinitePotential) into graphics primitives.*)


(* ::Subsubsection:: *)
(*option: GraphicsSize*)


(* ::Text:: *)
(*GraphicsSize sets the length scale for plotting infinite polygon points.*)


(* ::Section::Closed:: *)
(*change log*)


(* ::Text:: *)
(*1.0	2010/1/22	first packaged version*)


(* ::Text:: *)
(*1.1	2010/3/1	added options for cover plane where the potential vanishes*)
(*			changed interface to PotentialCoefficients, ComputePotential and OptimalPattern:*)
(*			Fourier resolution is now an option.*)


(* ::Text:: *)
(*1.1.1	2010/3/2	fixed underflow capture in Fourier out-of-plane exponentials*)


(* ::Text:: *)
(*1.2	2010/3/4	merged periodic and non-periodic codes; "StructureOptimization.m" is now obsolete*)
(*			changed names of many functions to include the "Periodic" specifier where necessary*)


(* ::Text:: *)
(*1.3	2010/3/4	input of points and derivatives is merged together*)


(* ::Text:: *)
(*1.3.1	2010/3/5	output is now a structure containing all parameters needed for recreation*)


(* ::Text:: *)
(*1.3.2	2010/3/8	minor bug fix in ComputePotential[3,...]: interface was wrong*)


(* ::Text:: *)
(*1.3.3	2010/3/13	cover plane code generalized to all kinds of pixels (non-periodic)*)
(*			worked over the documentation*)
(*			slightly changed the output format of the optimizer codes*)
(*			now exposing the ComputePotential function instead of PixelPotential*)


(* ::Text:: *)
(*1.3.4	2010/3/15	minor documentation update*)
(*			modified PlotPeriodicPattern so that input matches OptimalPeriodicPattern output*)
(*			ExpandDerivatives and RotateDerivatives are now public*)


(* ::Text:: *)
(*1.3.5	2010/3/15	ComputePotential accepts lists of pixels*)
(*			bug fix in ComputePotential[2...] and [3...]*)


(* ::Text:: *)
(*1.3.6	2010/3/15	added InfPoint[\[Alpha]] specifier for infinite pixels in ComputePotential*)


(* ::Text:: *)
(*1.4	2010/3/18	new Hanson-Hirshman algorithm for ComputePotential*)
(*			started introducing compiled functions for speedup*)
(*			non-periodic code: pixels are now specified as PolygonPixel[], DiscPixel[],*)
(*				PointPixel[]*)
(*			added PixelGraphics function for converting pixel specifications into graphics*)
(*				primitive*)


(* ::Text:: *)
(*1.4.1	2010/3/22	new formula for polygon edge potentials (d=0), fixes zero-length crash*)
(*			PixelGraphics[PolygonPixel[...]] fixed*)


(* ::Text:: *)
(*1.4.2	2010/3/24	OptimalStructure::range had been missing*)
(*			added PixelConstraint option*)


(* ::Text:: *)
(*1.4.3	2010/3/26	added ExtraConstraints option*)


(* ::Text:: *)
(*1.4.4	2010/5/7	fixed bug in OptimalStructure: the cover plane specification was not forwarded to PixelPotential!*)


(* ::Text:: *)
(*1.4.5	2010/6/29	fixed a bug in the documentation of OptimalPeriodicPattern*)
(*			the options EqualD? now takes options {False, LabFrame, LocalFrame} to be*)
(*				more specific*)
(*			the OptimalStructure procedure has been cleaned up a bit*)


(* ::Text:: *)
(*1.4.6	2010/6/29	OptimalPeriodicPattern has been sped up by calculating only the necessary*)
(*				derivative coefficients*)


(* ::Text:: *)
(*1.4.7	2010/7/2	changed name of "OptimalStructure" to "OptimalFinitePattern"*)
(*			unified "PotentialBounds" and "PixelConstraints" options into "PixelRange" option*)
(*			added the "PlotFinitePattern" function*)
(*			fixed Fourier constraints in OptimalPeriodicPattern (they used to not work at all)*)
(*			added ExtraConstraints option to OptimalFinitePattern*)
(*			added sanity checks on all constraints*)


(* ::Text:: *)
(*1.4.8	2010/07/09	renamed ComputePotential into ComputeFinitePotential*)
(*			added PixelCenterArea function for computing center and area of a pixel*)
(*			added "FastPotential" option to ComputeFinitePotential (and OptimalFinitePotential)*)
(*				which replaces each pixel by a point of equivalent center and area*)
(*			added PatternOptimizationVersion string*)


(* ::Text:: *)
(*1.4.9	2010/07/12	added attributes to functions (Locked, ReadProtected)*)


(* ::Text:: *)
(*1.4.10	2010/09/13	minor interface bug in CoverPlane option to ComputeFinitePotential*)
(*			fixed the derivatives of ComputeFinitePotential in the presence of a cover plane*)


(* ::Text:: *)
(*1.4.11	2011/05/24	fixed the d=0 case of ComputePeriodicPotential in the presence of a cover plane*)
(*			(numerical bug in FourierExponentialsOutOfPlane)*)


(* ::Text:: *)
(*2.0.0	2011/07/04	first published version*)
(*			changed name to "SurfacePattern"*)
(*			added documentation of FastPotential option*)


(* ::Text:: *)
(*2.0.1	2011/07/08	added website URL*)


(* ::Text:: *)
(*2.0.2	2011/09/06	changed Outer[Times,a,b] into KroneckerProduct[a,b] for faster evolution*)
(*			improved format checking on direct Fourier constraints to OptimalPeriodicPattern*)


(* ::Text:: *)
(*2.0.3	2011/12/05	changed license to GPL v3*)


(* ::Text:: *)
(*2.1	2011/12/06	simplified edgepotentialC0* to use ArcTan instead of Arg (see van Oosterom and Strackee)*)
(*			Thanks to Robert J\[ODoubleDot]rdens for pointing this out!*)


(* ::Text:: *)
(*2.2	2012/04/13	inequality constraints work now*)
(*			added Laplace constraint checking with inequality constraints*)


(* ::Text:: *)
(*2.3	2012/06/19	finite pixel potentials now support up to fifth-order spatial derivatives*)
(*			(periodic potentials are still stuck at third-order spatial derivatives)*)
(*			changed default compilation target to "C" for faster evaluation of potentials*)


(* ::Text:: *)
(*2.4	2012/06/20	OptimalFinitePattern now supports up to fifth-order spatial derivatives*)
(*			(OptimalPeriodicPattern is still stuck at third-order spatial derivatives)*)


(* ::Section:: *)
(*prolog*)


BeginPackage["SurfacePattern`"]


SurfacePatternVersion = "2.4";
SetAttributes[SurfacePatternVersion,{Locked,ReadProtected}]


savecompilationtarget=$CompilationTarget;
$CompilationTarget="C";


(* ::Section::Closed:: *)
(*declarations*)


(* ::Subsection::Closed:: *)
(*common*)


PixelRange::usage=
"PixelRange is an option specifying the range of values each pixel may take in the results of OptimalPeriodicPattern and OptimalFinitePattern. "~~
"Specifying {xl,xu} means that all the pixel values are xl<=x<=xu. "~~
"The form {{{xl11,xu11},{xl12,xu12},...,{xl1n,xu1n}},...,{{xln1,xun1},{xln2,xun2},...,{xlnn,xunn}}} can be used to specify individual ranges "~~
"for the different pixels in OptimalPeriodicPattern. "~~
"The form {{xl1,xu1},{xl2,xu2},...,{xln,xun}} can be used to specify individual ranges for the different pixels in OptimalFinitePattern. "~~
"The default value is {0,1}."


CoverPlane::usage=
"CoverPlane is an option for ComputePeriodicPotential, ComputeFinitePotential, OptimalPeriodicPattern, and OptimalFinitePattern which introduces "~~
"a cover plane above the pattern where the potential is zero. By default no cover plane is assumed. "~~
"For periodic calculations, the form CoverPlane->h introduces a cover plane at height h. "~~
"For finite calculations, the form CoverPlane->{h,n} introduces a cover plane at height h and uses an approximation where "~~
"mirror planes are summed only to the nth order."


EqualD0::usage="EqualD0 is an option to OptimalPeriodicPattern and OptimalFinitePattern which constrains the potential at all points to be equal. "~~
"Possible values are {False, True, LabFrame, LocalFrame}, where the last three have the same effect. "~~
"The default value is False."
EqualD1::usage="EqualD1 is an option to OptimalPeriodicPattern and OptimalFinitePattern which constrains the first derivatives of the potential "~~
"at all points to be equal. "~~
"EqualD1->False leaves the first derivatives independent. "~~
"EqualD1->LabFrame constrains the first derivatives to be equal in the lab frame. "~~
"EqualD1->LocalFrame constrains the first derivatives to be equal in the rotated frames attached to the different points. "~~
"The default value is False."
EqualD2::usage="EqualD2 is an option to OptimalPeriodicPattern and OptimalFinitePattern which constrains the second derivatives of the potential "~~
"at all points to be equal. "~~
"EqualD2->False leaves the second derivatives independent. "~~
"EqualD2->LabFrame constrains the second derivatives to be equal in the lab frame. "~~
"EqualD2->LocalFrame constrains the second derivatives to be equal in the rotated frames attached to the different points. "~~
"The default value is False."
EqualD3::usage="EqualD3 is an option to OptimalPeriodicPattern and OptimalFinitePattern which constrains the third derivatives of the potential "~~
"at all points to be equal. "~~
"EqualD3->False leaves the third derivatives independent. "~~
"EqualD3->LabFrame constrains the third derivatives to be equal in the lab frame. "~~
"EqualD3->LocalFrame constrains the third derivatives to be equal in the rotated frames attached to the different points. "~~
"The default value is False."
EqualD4::usage="EqualD4 is an option to OptimalPeriodicPattern and OptimalFinitePattern which constrains the fourth derivatives of the potential "~~
"at all points to be equal. "~~
"EqualD4->False leaves the fourth derivatives independent. "~~
"EqualD4->LabFrame constrains the fourth derivatives to be equal in the lab frame. "~~
"EqualD4->LocalFrame constrains the fourth derivatives to be equal in the rotated frames attached to the different points. "~~
"The default value is False."
EqualD5::usage="EqualD5 is an option to OptimalPeriodicPattern and OptimalFinitePattern which constrains the fifth derivatives of the potential "~~
"at all points to be equal. "~~
"EqualD5->False leaves the fifth derivatives independent. "~~
"EqualD5->LabFrame constrains the fifth derivatives to be equal in the lab frame. "~~
"EqualD5->LocalFrame constrains the fifth derivatives to be equal in the rotated frames attached to the different points. "~~
"The default value is False."
LabFrame::usage="LabFrame is a possible value for the options EqualD0, EqualD1, EqualD2, EqualD3, EqualD4, EqualD5. "~~
"It constrains the derivatives of the potential to be equal in the lab (global) frame."
LocalFrame::usage="LocalFrame is a possible value for the options EqualD0, EqualD1, EqualD2, EqualD3, EqualD4, EqualD5. "~~
"It constrains the derivatives of the potential to be equal in the local frames attached to the different points."


ExtraConstraints::usage=
"The option ExtraConstraints is used to specify a list of general constraints on the pixel potential vector. "~~
"For OptimalPeriodicPattern, each constraint must be of the form {{{a11,a12,...,a1n},...,{an1,an2,...,ann}},b} "~~
"constraining the scalar product of the pixel potentials with the values aij to be equal to b. "~~
"For OptimalFinitePattern, each constraint must be of the form {{a1,a2,...,an},b} "~~
"constraining the scalar product of the pixel potentials with the values ai to be equal to b. "~~
"The values b can also be of the form {b,s} where s=-1 means <b, s=0 means =b, and s=1 means >b."


(* ::Subsection::Closed:: *)
(*periodic*)


ComputePeriodicPotential::usage=
"Computes the potential or its derivatives at a point in space for a given periodic pattern."


OptimalPeriodicPattern::usage=
"Optimizes a periodic pattern under given local and Fourier constraints."


FourierResolution::usage=
"FourierResolution is an option to ComputePeriodicPotential and OptimalPeriodicPattern which specifies the resolution of the underlying Fourier decomposition."


PlotPeriodicPattern::usage=
"Plots a periodic pattern as generated by OptimalPeriodicPattern."


FourierPattern::usage=
"Compute the Fourier components of a pattern."


(* ::Subsection::Closed:: *)
(*non-periodic*)


ComputeFinitePotential::usage=
"Computes the potential or its derivatives at a point in space for a given in-plane structure."


FastPotential::usage=
"FastPotential is an option for ComputeFinitePotential and OptimalFinitePattern. "~~
"When set to True, all pixels are replaced by points of equal center and effective area. "~~
"This speeds up the potential calculation."


OptimalFinitePattern::usage=
"Optimizes a planar structure under given local constraints."


PointPixel::usage=
"PointPixel[{x,y},a] is a point pixel at (x,y) of area a."


DiscPixel::usage=
"DiscPixel[{x,y},r] is a disc-shaped pixel centered at (x,y) with radius r."


PolygonPixel::usage=
"PolygonPixel[{{x1,y1},{x2,y2},...,{xn,yn}}] is a polygonal pixel. Points can be replaced by InfPoint[\[Theta]]."


InfPoint::usage=
"InfPoint[\[Theta]] is a point at infinity in the direction \[Theta]."


PixelCenterArea::usage=
"PixelCenterArea[p] computes the center-of-gravity and the area of a pixel of of a list of pixels."


PixelGraphics::usage=
"PixelGraphics[p] converts a pixel specifier into a graphics object."


GraphicsSize::usage=
"GraphicsSize sets the length scale for infinite polygon points in PixelGraphics. "~~
"This is only for display purposes, not for potential calculations."


PlotFinitePattern::usage=
"Plots a finite pattern as generated by OptimalFinitePattern."


(* ::Section::Closed:: *)
(*start package code*)


Begin["`Private`"]


(* ::Section::Closed:: *)
(*potential calculation*)


(* ::Text:: *)
(*the index d gives:*)
(*0: potential \[CapitalPhi]*)
(*1: {\[Delta]x,\[Delta]y,\[Delta]z} as given by D[\[CapitalPhi], {{x,y,z}}]]*)
(*2: {\[Delta]xx, \[Delta]xy, \[Delta]xz, \[Delta]yy, \[Delta]yz} as given by Flatten[D[\[CapitalPhi], {{x,y,z},2}]][[{1, 2, 3, 5, 6}]]*)
(*3: {\[Delta]xxy, \[Delta]xxz, \[Delta]yyz, \[Delta]yyx, \[Delta]zzx, \[Delta]zzy, \[Delta]xyz} as given by Flatten[D[\[CapitalPhi], {{x,y,z},3}]][[{2, 3, 15, 5, 9, 18, 6}]]*)
(*4: {\[Delta]xxxy,\[Delta]xxxz,\[Delta]xxyy,\[Delta]xxzz,\[Delta]xyyy,\[Delta]xzzz,\[Delta]yyyz,\[Delta]yyzz,\[Delta]yzzz} as given by Flatten[D[\[CapitalPhi], {{x,y,z},4}]][[{2,3,5,9,14,27,42,45,54}]]*)
(*5: {\[Delta]xxxyy,\[Delta]xxxyz,\[Delta]xxxzz,\[Delta]xxyyy,\[Delta]xxyyz,\[Delta]xxyzz,\[Delta]xxzzz,\[Delta]xyyyz,\[Delta]xyyzz,\[Delta]yyyzz,\[Delta]yyzzz} as given by Flatten[D[\[CapitalPhi], {{x,y,z},5}]][[{5,6,9,14,15,18,27,42,45,126,135}]]*)


(* ::Text:: *)
(*The following Laplace constraints can be used to find the remaining components of the derivative tensors:*)
(*2:	\[Delta]zz = -\[Delta]xx-\[Delta]yy*)
(*3:	\[Delta]xxx = -\[Delta]xyy-\[Delta]xzz*)
(*	\[Delta]yyy = -\[Delta]xxy-\[Delta]yzz*)
(*	\[Delta]zzz = -\[Delta]xxz-\[Delta]yyz*)
(*4:	\[Delta]xxxx = -\[Delta]xxyy-\[Delta]xxzz*)
(*	\[Delta]yyyy = -\[Delta]xxyy-\[Delta]yyzz*)
(*	\[Delta]zzzz = -\[Delta]xxzz-\[Delta]yyzz*)
(*	\[Delta]xxyz = -\[Delta]yyyz-\[Delta]yzzz*)
(*	\[Delta]xyyz = -\[Delta]xxxz-\[Delta]xzzz*)
(*	\[Delta]xyzz = -\[Delta]xxxy-\[Delta]xyyy*)
(*5:	\[Delta]xxxxx = -\[Delta]xxxyy-\[Delta]xxxzz*)
(*	\[Delta]yyyyy = -\[Delta]xxyyy-\[Delta]yyyzz*)
(*	\[Delta]zzzzz = -\[Delta]xxzzz-\[Delta]yyzzz*)
(*	\[Delta]xxxxy = -\[Delta]xxyyy-\[Delta]xxyzz*)
(*	\[Delta]xxxxz = -\[Delta]xxzzz-\[Delta]xxyyz*)
(*	\[Delta]xyyyy = -\[Delta]xxxyy-\[Delta]xyyzz*)
(*	\[Delta]yyyyz = -\[Delta]yyzzz-\[Delta]xxyyz*)
(*	\[Delta]xzzzz = -\[Delta]xxxzz-\[Delta]xyyzz*)
(*	\[Delta]yzzzz = -\[Delta]yyyzz-\[Delta]xxyzz*)
(*	\[Delta]xyzzz = -\[Delta]xxxyz-\[Delta]xyyyz*)


(* ::Subsection::Closed:: *)
(*common*)


SetAttributes[CoverPlane,{Locked,ReadProtected}]


(* ::Subsection::Closed:: *)
(*periodic (up to third derivatives implemented)*)


(* ::Subsubsection::Closed:: *)
(*definitions for Fourier transforms*)


(* ::Text:: *)
(*array of Fourier coefficients of parallelepiped pixels:*)


Clear[PixelFourierCoefficientList];
PixelFourierCoefficientList[0,n_,s_]:=PixelFourierCoefficientList[0,n,s]=Module[{t},
  t=Table[N[Sin[(k \[Pi])/n]/(k \[Pi])]Table[E^(-I(2i+1)k \[Pi]/n),{i,0,n-1}],{k,1,s}];
  Join[Reverse[Conjugate[t]],N[1/n]{Table[1,{n}]},t]]
PixelFourierCoefficientList[i_,n_,s_]:=PixelFourierCoefficientList[i,n,s]=Range[-s,s]^i*PixelFourierCoefficientList[0,n,s]


(* ::Text:: *)
(*array of Fourier momentum lengths:*)


Clear[MomentumLengthList];
MomentumLengthList[bi_,s_]:=MomentumLengthList[bi,s]=Table[Sqrt[#.#]&[{k1,k2}.bi],{k1,-s,s},{k2,-s,s}]//N


(* ::Text:: *)
(*compute Fourier exponentials, without and with cover plane:*)


Clear[FourierExponentialsInPlane,FourierExponentialsOutOfPlane,SinhDenominators,CothDerivatives];
FourierExponentialsInPlane[s_,x_]:=FourierExponentialsInPlane[s,x]=Exp[2\[Pi] I x Range[-s,s]]//N
(* first without cover plane (corresponding to h=\[Infinity]) *)
FourierExponentialsOutOfPlane[bi_,s_,\[Infinity],z_]:=FourierExponentialsOutOfPlane[bi,s,\[Infinity],z]=Module[{cmu,t},
  cmu=SystemOptions["CatchMachineUnderflow"];
  SetSystemOptions["CatchMachineUnderflow"->False]; (* dramatic speedup! *)
  t=Exp[-2\[Pi] z MomentumLengthList[bi,s]]//N;
  SetSystemOptions[cmu];
  t]
(* then with cover plane at finite height h *)
SinhDenominators[bi_,s_,h_]:=SinhDenominators[bi,s,h]=Module[{cmu,t},
  cmu=SystemOptions["CatchMachineUnderflow"];
  SetSystemOptions["CatchMachineUnderflow"->False]; (* dramatic speedup! *)
  t=Map[If[#==0,1/h,1/(1-Exp[-4\[Pi] h #])]&,MomentumLengthList[bi,s],{2}]//N;
  SetSystemOptions[cmu];
  t]
CothDerivatives[bi_,s_,z_]:=CothDerivatives[bi,s,z]=Module[{cmu,t},
  cmu=SystemOptions["CatchMachineUnderflow"];
  SetSystemOptions["CatchMachineUnderflow"->False]; (* dramatic speedup! *)
  t=Map[If[#==0,1/(2\[Pi] z),#*Coth[2\[Pi] # z]]&,MomentumLengthList[bi,s],{2}]//N;
  SetSystemOptions[cmu];
  t]
FourierExponentialsOutOfPlane[bi_,s_,h_,z_]:=FourierExponentialsOutOfPlane[bi,s,h,z]=Module[{cmu,t},
  cmu=SystemOptions["CatchMachineUnderflow"];
  SetSystemOptions["CatchMachineUnderflow"->False]; (* dramatic speedup! *)
  t=SinhDenominators[bi,s,h]*Map[If[#==0,h-z,Exp[-2\[Pi] z #]-Exp[-2\[Pi] (2h-z)#]]&,MomentumLengthList[bi,s],{2}]; (* vanishes at z=h *)
  SetSystemOptions[cmu];
  t]


(* ::Text:: *)
(*compute coefficients for Fourier transforming an entire pattern:*)


FourierPattern[{n_/;(IntegerQ[n]\[And]n>=1),s_/;(IntegerQ[s]\[And]s>=1)}]:=
Module[{\[Alpha]},
  \[Alpha]=PixelFourierCoefficientList[0,n,s];
  Map[Flatten,Transpose[KroneckerProduct[\[Alpha],\[Alpha]],{1,3,2,4}],{2}]]


SetAttributes[FourierPattern,{Locked,ReadProtected}]
SetAttributes[PixelFourierCoefficientList,{Locked,ReadProtected}]
SetAttributes[MomentumLengthList,{Locked,ReadProtected}]
SetAttributes[FourierExponentialsInPlane,{Locked,ReadProtected}]
SetAttributes[FourierExponentialsOutOfPlane,{Locked,ReadProtected}]
SetAttributes[SinhDenominators,{Locked,ReadProtected}]
SetAttributes[CothDerivatives,{Locked,ReadProtected}]


(* ::Subsubsection::Closed:: *)
(*potential calculations*)


(* ::Text:: *)
(*compute the potential and its first, second, third spatial derivatives for a given pixel pattern:*)
(*(only those specified in the last parameter list are actually computed)*)


Options[PeriodicPotentialCoefficients]={CoverPlane->\[Infinity],FourierResolution->Automatic}
Options[ComputePeriodicPotential]={CoverPlane->\[Infinity],FourierResolution->Automatic}


PeriodicPotentialCoefficients::cph="The cover plane height `1` is not a positive real number."


PeriodicPotentialCoefficients[bi_/;(MatrixQ[bi,NumericQ]\[And]Dimensions[bi]==={2,2}),
                              n_/;(IntegerQ[n]\[And]n>=1),
                              {x_?NumericQ,y_?NumericQ,z_?NumericQ},
                              {c0_/;(c0\[Element]Booleans),c1_/;(c1\[Element]Booleans),c2_/;(c2\[Element]Booleans),c3_/;(c3\[Element]Booleans)},
                              opts:OptionsPattern[]]:=
Module[{s,h,\[Alpha],\[Alpha]k,\[Alpha]kk,\[Alpha]kkk,k,\[Epsilon],\[Phi]0,\[Phi]1,\[Phi]2,\[Phi]3,\[Epsilon]k,\[Epsilon]kk,\[Epsilon]\[Alpha],\[Alpha]\[Epsilon],\[Alpha]\[Epsilon]k,\[Epsilon]\[Alpha]k,\[Epsilon]k\[Alpha]},
  (* cover plane height *)
  h=OptionValue[CoverPlane];
  (* Fourier resolution *)
  s=OptionValue[FourierResolution];
  s=If[s===Automatic,n,s];
  (* Fourier transform coefficients *)
  \[Alpha]=PixelFourierCoefficientList[0,n,s];
  \[Alpha]k=PixelFourierCoefficientList[1,n,s];
  \[Alpha]kk=PixelFourierCoefficientList[2,n,s];
  \[Alpha]kkk=PixelFourierCoefficientList[3,n,s];
  k=MomentumLengthList[bi,s];
  \[Epsilon]=KroneckerProduct[FourierExponentialsInPlane[s,x bi[[1,1]]+y bi[[1,2]]],FourierExponentialsInPlane[s,x bi[[2,1]]+y bi[[2,2]]]]*FourierExponentialsOutOfPlane[bi,s,h,z];
  (* the first derivatives in z depend on whether or not there is a cover plane *)
  \[Epsilon]k=If[h===\[Infinity],k,CothDerivatives[bi,s,h-z]]*\[Epsilon];
  (* but the second derivatives don't *)
  \[Epsilon]kk=k^2*\[Epsilon];
  \[Epsilon]\[Alpha]=\[Epsilon].\[Alpha];
  If[c1\[Or]c2\[Or]c3,\[Alpha]\[Epsilon]=\[Alpha]\[Transpose].\[Epsilon];\[Alpha]\[Epsilon]k=\[Alpha]\[Transpose].\[Epsilon]k];
  If[c2\[Or]c3,\[Epsilon]\[Alpha]k=\[Epsilon].\[Alpha]k;\[Epsilon]k\[Alpha]=\[Epsilon]k.\[Alpha]];
  If[c0,\[Phi]0=Flatten[\[Alpha]\[Transpose].\[Epsilon]\[Alpha]]];
  If[c1,\[Phi]1=Flatten/@{\[Alpha]k\[Transpose].\[Epsilon]\[Alpha],\[Alpha]\[Epsilon].\[Alpha]k,\[Alpha]\[Epsilon]k.\[Alpha]}];
  If[c2,\[Phi]2=Flatten/@{\[Alpha]kk\[Transpose].\[Epsilon]\[Alpha],\[Alpha]k\[Transpose].\[Epsilon]\[Alpha]k,\[Alpha]k\[Transpose].\[Epsilon]k\[Alpha],\[Alpha]\[Epsilon].\[Alpha]kk,\[Alpha]\[Epsilon]k.\[Alpha]k}];
  If[c3,\[Phi]3=Flatten/@{\[Alpha]kkk\[Transpose].\[Epsilon]\[Alpha],\[Alpha]kk\[Transpose].\[Epsilon]\[Alpha]k,\[Alpha]k\[Transpose].\[Epsilon].\[Alpha]kk,\[Alpha]\[Epsilon].\[Alpha]kkk,\[Alpha]kk\[Transpose].\[Epsilon]k\[Alpha],\[Alpha]k\[Transpose].\[Epsilon]k.\[Alpha]k,\[Alpha]\[Epsilon]k.\[Alpha]kk,\[Alpha]k\[Transpose].\[Epsilon]kk.\[Alpha],\[Alpha]\[Transpose].\[Epsilon]kk.\[Alpha]k}];
  {If[c0,\[Phi]0//Re],
   If[c1,2\[Pi] {I {bi[[1,1]],bi[[2,1]],0},I {bi[[1,2]],bi[[2,2]],0},{0,0,-1}}.\[Phi]1//Re],
   If[c2,-4 \[Pi]^2{{bi[[1,1]]^2,2bi[[1,1]]bi[[2,1]],0,bi[[2,1]]^2,0},{bi[[1,1]]bi[[1,2]],bi[[1,1]]bi[[2,2]]+bi[[1,2]]bi[[2,1]],0,bi[[2,1]]bi[[2,2]],0},I {0,0,bi[[1,1]],0,bi[[2,1]]},{bi[[1,2]]^2,2bi[[1,2]]bi[[2,2]],0,bi[[2,2]]^2,0},I {0,0,bi[[1,2]],0,bi[[2,2]]}}.\[Phi]2//Re],
   If[c3,8\[Pi]^3{-I{bi[[1,1]]^2bi[[1,2]],bi[[1,1]](2bi[[1,2]]bi[[2,1]]+bi[[1,1]]bi[[2,2]]),bi[[2,1]](bi[[1,2]]bi[[2,1]]+2bi[[1,1]]bi[[2,2]]),bi[[2,1]]^2bi[[2,2]],0,0,0,0,0},{0,0,0,0,bi[[1,1]]^2,2bi[[1,1]]bi[[2,1]],bi[[2,1]]^2,0,0},{0,0,0,0,bi[[1,2]]^2,2bi[[1,2]]bi[[2,2]],bi[[2,2]]^2,0,0},-I{bi[[1,1]] bi[[1,2]]^2,bi[[1,2]](bi[[1,2]]bi[[2,1]]+2bi[[1,1]]bi[[2,2]]),bi[[2,2]](2bi[[1,2]]bi[[2,1]]+bi[[1,1]]bi[[2,2]]),bi[[2,1]] bi[[2,2]]^2,0,0,0,0,0},I {0,0,0,0,0,0,0,bi[[1,1]],bi[[2,1]]},I {0,0,0,0,0,0,0,bi[[1,2]],bi[[2,2]]},{0,0,0,0,bi[[1,1]]bi[[1,2]],(bi[[1,2]]bi[[2,1]]+bi[[1,1]]bi[[2,2]]),bi[[2,1]]bi[[2,2]],0,0}}.\[Phi]3//Re]
  }]


(* ::Text:: *)
(*compute the potential:*)


ComputePeriodicPotential[0,
                         basis_/;(MatrixQ[basis,NumericQ]\[And]Dimensions[basis]==={2,2}),
                         {x_?NumericQ,y_?NumericQ,z_?NumericQ},
                         \[Phi]_,
                         opts:OptionsPattern[]]:=
Module[{n},
  n=Length[\[Phi]];
  PeriodicPotentialCoefficients[Inverse[basis]\[Transpose]//N,n,{x,y,z},{True,False,False,False},
    Evaluate[FilterRules[{opts,Options[ComputePeriodicPotential]}, Options[PeriodicPotentialCoefficients]]]][[1]].Flatten[\[Phi]]]


(* ::Text:: *)
(*compute the derivatives:*)


ComputePeriodicPotential[1,
                         basis_/;(MatrixQ[basis,NumericQ]\[And]Dimensions[basis]==={2,2}),
                         {x_?NumericQ,y_?NumericQ,z_?NumericQ},
                         \[Phi]_,
                         opts:OptionsPattern[]]:=
Module[{n},
  n=Length[\[Phi]];
  PeriodicPotentialCoefficients[Inverse[basis]\[Transpose]//N,n,{x,y,z},{False,True,False,False},
    Evaluate[FilterRules[{opts,Options[ComputePeriodicPotential]}, Options[PeriodicPotentialCoefficients]]]][[2]].Flatten[\[Phi]]]


ComputePeriodicPotential[2,
                         basis_/;(MatrixQ[basis,NumericQ]\[And]Dimensions[basis]==={2,2}),
                         {x_?NumericQ,y_?NumericQ,z_?NumericQ},
                         \[Phi]_,
                         opts:OptionsPattern[]]:=
Module[{n},
  n=Length[\[Phi]];
  {{#[[1]], #[[2]], #[[3]]},
   {#[[2]], #[[4]], #[[5]]},
   {#[[3]], #[[5]], -#[[1]]-#[[4]]}}&[PeriodicPotentialCoefficients[Inverse[basis]\[Transpose]//N,n,{x,y,z},{False,False,True,False},
      Evaluate[FilterRules[{opts,Options[ComputePeriodicPotential]}, Options[PeriodicPotentialCoefficients]]]][[3]].Flatten[\[Phi]]]]


ComputePeriodicPotential[3,
                         basis_/;(MatrixQ[basis,NumericQ]\[And]Dimensions[basis]==={2,2}),
                         {x_?NumericQ,y_?NumericQ,z_?NumericQ},
                         \[Phi]_,
                         opts:OptionsPattern[]]:=
Module[{n},
  n=Length[\[Phi]];
  {{{-#[[4]]-#[[5]],#[[1]],#[[2]]},{#[[1]],#[[4]],#[[7]]},{#[[2]],#[[7]],#[[5]]}},
   {{#[[1]],#[[4]],#[[7]]},{#[[4]],-#[[1]]-#[[6]],#[[3]]},{#[[7]],#[[3]],#[[6]]}},
   {{#[[2]],#[[7]],#[[5]]},{#[[7]],#[[3]],#[[6]]},{#[[5]],#[[6]],-#[[2]]-#[[3]]}}}&[PeriodicPotentialCoefficients[Inverse[basis]\[Transpose]//N,n,{x,y,z},{False,False,False,True},
     Evaluate[FilterRules[{opts,Options[ComputePeriodicPotential]}, Options[PeriodicPotentialCoefficients]]]][[4]].Flatten[\[Phi]]]]


SetAttributes[PeriodicPotentialCoefficients,{Locked,ReadProtected}]
SetAttributes[ComputePeriodicPotential,{Locked,ReadProtected}]
SetAttributes[FourierResolution,{Locked,ReadProtected}]


(* ::Subsection::Closed:: *)
(*non-periodic (up to fifth derivatives implemented)*)


(* ::Text:: *)
(*only the derivatives specified in the boolean list (c0,c1,c2,c3,c4,c5) are actually calculated*)


(* ::Subsubsection::Closed:: *)
(*polygonal pixels*)


(* ::Text:: *)
(*edge potential: (see Hanson and Hirshman, 2002; van Oosterom and Strackee, 1983)*)


edgepotentialstraighttol=1.*^-12


edgepotentialC0ii=Compile[{\[CapitalDelta]\[Theta],c\[Theta]1,s\[Theta]1,x,y,z},
  If[Abs[Mod[\[CapitalDelta]\[Theta],2\[Pi]]-\[Pi]]<edgepotentialstraighttol,
    ArcTan[z,x*s\[Theta]1-y*c\[Theta]1]/Pi,
    Mod[\[CapitalDelta]\[Theta],2\[Pi],-\[Pi]]/(2*Pi)]]
edgepotentialC0ip=Compile[{c\[Theta]1,s\[Theta]1,R2,x,y,z},
  ArcTan[R2-x*c\[Theta]1-y*s\[Theta]1+z,x*s\[Theta]1-y*c\[Theta]1]/Pi]
edgepotentialC0pp=Compile[{R1,R2,L2,X1,Y1,X2,Y2,z},
  ArcTan[R1*R2+X1*X2+Y1*Y2+z (z+R1+R2),X1*Y2-X2*Y1]/Pi]


edgepotentialC1ii=Compile[{\[CapitalDelta]\[Theta],c\[Theta]1,s\[Theta]1,x,y,z},
  If[Abs[Mod[\[CapitalDelta]\[Theta],2\[Pi]]-\[Pi]]<edgepotentialstraighttol,
    {s\[Theta]1*z,
     -(c\[Theta]1*z),
     -(s\[Theta]1*x)+c\[Theta]1*y}/(Pi*((y*c\[Theta]1-x*s\[Theta]1)^2+z^2)),
    {0,0,0}]]
edgepotentialC1ip=Compile[{c\[Theta]1,s\[Theta]1,R2,x,y,z},
  {s\[Theta]1*z,
   -(c\[Theta]1*z),
   -(s\[Theta]1*x)+c\[Theta]1*y}/(2*Pi*R2*(R2-c\[Theta]1*x-s\[Theta]1*y))]  (* there is an additional term which sums to zero for closed polygons *)
edgepotentialC1pp=Compile[{R1,R2,L2,X1,Y1,X2,Y2,z},
  {(-Y1+Y2)*z,
   (X1-X2)*z,
   X2*Y1-X1*Y2}*(R1+R2)/(Pi*R1*R2*((R1+R2)^2-L2))]


edgepotentialC2ii=Compile[{\[CapitalDelta]\[Theta],c\[Theta]1,s\[Theta]1,x,y,z},
  If[Abs[Mod[\[CapitalDelta]\[Theta],2\[Pi]]-\[Pi]]<edgepotentialstraighttol,
    {2*s\[Theta]1^2*(-(s\[Theta]1*x)+c\[Theta]1*y)*z,
     -2*c\[Theta]1*s\[Theta]1*(-(s\[Theta]1*x)+c\[Theta]1*y)*z,
     -(s\[Theta]1*(s\[Theta]1*x-c\[Theta]1*y+z)*(-(s\[Theta]1*x)+c\[Theta]1*y+z)),
     2*c\[Theta]1^2*(-(s\[Theta]1*x)+c\[Theta]1*y)*z,
     c\[Theta]1*(s\[Theta]1*x-c\[Theta]1*y+z)*(-(s\[Theta]1*x)+c\[Theta]1*y+z)}/(Pi*((y*c\[Theta]1-x*s\[Theta]1)^2+z^2)^2),
    {0,0,0,0,0}]]
edgepotentialC2ip=Compile[{c\[Theta]1,s\[Theta]1,R2,x,y,z},
  {s\[Theta]1*(-2*R2*x+c\[Theta]1*(R2^2+x^2)+s\[Theta]1*x*y)*z,
   s\[Theta]1*(-2*R2*y+c\[Theta]1*x*y+s\[Theta]1*(R2^2+y^2))*z,
   -(s\[Theta]1*((c\[Theta]1*x+s\[Theta]1*y)*(x^2+y^2)+R2*(R2^2-2*(x^2+y^2)))),
   -(c\[Theta]1*(-2*R2*y+c\[Theta]1*x*y+s\[Theta]1*(R2^2+y^2))*z),
   c\[Theta]1*((c\[Theta]1*x+s\[Theta]1*y)*(x^2+y^2)+R2*(R2^2-2*(x^2+y^2)))}/(2*Pi*R2^3*(R2 - c\[Theta]1*x - s\[Theta]1*y)^2)]
edgepotentialC2pp=Compile[{R1,R2,L2,X1,Y1,X2,Y2,z},
  {(R2^2*(-(L2*R2)+(R1+R2)^2*(2*R1+R2))*X1+R1^2*(-(L2*R1)+(R1+R2)^2*(R1+2*R2))*X2)*(Y1-Y2)*z,
   (Y1-Y2)*(R2^2*(-(L2*R2)+(R1+R2)^2*(2*R1+R2))*Y1+R1^2*(-(L2*R1)+(R1+R2)^2*(R1+2*R2))*Y2)*z,
   (-R1-R2)*(Y1-Y2)*(R1^2*(-(L2*R2^2)+(R1+R2)^2*(X2^2+Y2^2))-(R2*(R1+R2)^3-L2*(R1^2-R1*R2+R2^2))*z^2),
   (-X1+X2)*(R2^2*(-(L2*R2)+(R1+R2)^2*(2*R1+R2))*Y1+R1^2*(-(L2*R1)+(R1+R2)^2*(R1+2*R2))*Y2)*z,
   (R1+R2)*(X1-X2)*(R1^2*(-(L2*R2^2)+(R1+R2)^2*(X2^2+Y2^2))-(R2*(R1+R2)^3-L2*(R1^2-R1*R2+R2^2))*z^2)}/(Pi*(R1*R2)^3*((R1+R2)^2-L2)^2)]


edgepotentialC3ii=Compile[{\[CapitalDelta]\[Theta],c\[Theta]1,s\[Theta]1,x,y,z},
  If[Abs[Mod[\[CapitalDelta]\[Theta],2\[Pi]]-\[Pi]]<edgepotentialstraighttol,
    {c\[Theta]1*s\[Theta]1^2*z*(-3*(-(s\[Theta]1*x)+c\[Theta]1*y)^2+z^2),
     s\[Theta]1^2*(-(s\[Theta]1*x)+c\[Theta]1*y)*((-(s\[Theta]1*x)+c\[Theta]1*y)^2-3*z^2),
     c\[Theta]1^2*(-(s\[Theta]1*x)+c\[Theta]1*y)*((-(s\[Theta]1*x)+c\[Theta]1*y)^2-3*z^2),
     -(c\[Theta]1^2*s\[Theta]1*z*(-3*(-(s\[Theta]1*x)+c\[Theta]1*y)^2+z^2)),
     s\[Theta]1*z*(-3*(-(s\[Theta]1*x)+c\[Theta]1*y)^2+z^2),
     -(c\[Theta]1*z*(-3*(-(s\[Theta]1*x)+c\[Theta]1*y)^2+z^2)),
     -(c\[Theta]1*s\[Theta]1*(-(s\[Theta]1*x)+c\[Theta]1*y)*((-(s\[Theta]1*x)+c\[Theta]1*y)^2-3*z^2))}*2/(Pi*((y*c\[Theta]1-x*s\[Theta]1)^2+z^2)^3),
    {0,0,0,0,0,0,0}]]
edgepotentialC3ip=Compile[{c\[Theta]1,s\[Theta]1,R2,x,y,z},
  {s\[Theta]1*(8*R2^2*x*y+c\[Theta]1^2*x*(R2^2+3*x^2)*y+s\[Theta]1*x*(-3*R2+s\[Theta]1*y)*(R2^2+3*y^2)+c\[Theta]1*(-3*R2*(R2^2+3*x^2)*y+s\[Theta]1*(2*R2^4+6*x^2*y^2+R2^2*(x^2+y^2))))*z,
   s\[Theta]1*(2*R2^2*x*(3*R2^2-4*(x^2+y^2))-s\[Theta]1*x*y*(-3*R2+s\[Theta]1*y)*(-2*R2^2+3*(x^2+y^2))+c\[Theta]1^2*x*(R2^2*(x-y)*(x+y)-3*x^2*(x^2+y^2))+c\[Theta]1*(-(R2*(R2^2+3*x^2)*(2*R2^2-3*(x^2+y^2)))-s\[Theta]1*y*(R2^2*(-3*x^2+y^2)+6*x^2*(x^2+y^2)))),
   c\[Theta]1*(-2*R2^2*y*(3*R2^2-4*(x^2+y^2))+c\[Theta]1*x*(-3*R2+c\[Theta]1*x)*y*(-2*R2^2+3*(x^2+y^2))+s\[Theta]1^2*y*(R2^2*(x-y)*(x+y)+3*y^2*(x^2+y^2))+s\[Theta]1*(R2*(R2^2+3*y^2)*(2*R2^2-3*(x^2+y^2))+c\[Theta]1*x*(R2^2*(x^2-3*y^2)+6*y^2*(x^2+y^2)))),
   s\[Theta]1*(-(c\[Theta]1*x*(-3*R2+c\[Theta]1*x)*(R2^2-3*y^2))-2*(R2^4-4*R2^2*y^2)-3*s\[Theta]1*y*(R2^3+3*R2*y^2-2*c\[Theta]1*x*y^2)+s\[Theta]1^2*(2*R2^4+R2^2*y^2+3*y^4))*z,
   s\[Theta]1*z*(-6*R2^4-3*(c\[Theta]1*x+s\[Theta]1*y)*(-3*R2+c\[Theta]1*x+s\[Theta]1*y)*(x^2+y^2)+8*R2^2*z^2),
   c\[Theta]1*z*(6*R2^4+3*(c\[Theta]1*x+s\[Theta]1*y)*(-3*R2+c\[Theta]1*x+s\[Theta]1*y)*(x^2+y^2)-8*R2^2*z^2),
   -(s\[Theta]1*(-2*R2^2*y*(3*R2^2-4*(x^2+y^2))+c\[Theta]1*x*(-3*R2+c\[Theta]1*x)*y*(-2*R2^2+3*(x^2+y^2))+s\[Theta]1^2*y*(R2^2*(x-y)*(x+y)+3*y^2*(x^2+y^2))+s\[Theta]1*(R2*(R2^2+3*y^2)*(2*R2^2-3*(x^2+y^2))+c\[Theta]1*x*(R2^2*(x^2-3*y^2)+6*y^2*(x^2+y^2)))))}/(2*Pi*R2^5*(R2 - c\[Theta]1*x - s\[Theta]1*y)^3)]
edgepotentialC3pp=Compile[{R1,R2,L2,X1,Y1,X2,Y2,z},
  {(-Y1+Y2)*(3*R2^5*(L2-R2^2)^2*X1*Y1+18*R1*R2^6*(-L2+R2^2)*X1*Y1+3*R1^9*X2*Y2+18*R1^8*R2*X2*Y2+6*R1^3*R2^6*(9*X1*Y1+2*X2*Y1+2*X1*Y2)+R1^4*R2^5*(33*X1*Y1+26*X2*Y1+26*X1*Y2+8*X2*Y2)-2*R1^2*R2^5*(L2*(6*X1*Y1+X2*Y1+X1*Y2)-R2^2*(22*X1*Y1+X2*Y1+X1*Y2))+2*R1^7*(-3*L2*X2*Y2+R2^2*(X2*Y1+X1*Y2+22*X2*Y2))+R1^5*(3*L2^2*X2*Y2-2*L2*R2^2*(X2*Y1+X1*Y2+6*X2*Y2)+R2^4*(8*X1*Y1+26*X2*Y1+26*X1*Y2+33*X2*Y2))+R1^6*(-18*L2*R2*X2*Y2+R2^3*(12*X2*Y1+12*X1*Y2+54*X2*Y2)))*z,
   (Y1-Y2)*(2*L2*(R1+R2)^2*(-(R1^2*R2^2*(R1+R2)*(R2^2*X1+R1^2*X2))+(3*R1*R2^4*X1+3*R2^5*X1+R1^3*R2^2*(X1-2*X2)+3*R1^5*X2+3*R1^4*R2*X2+R1^2*R2^3*(-2*X1+X2))*z^2)+(R1+R2)^4*(R1^2*R2^4*(2*R1+R2)*X1+R1^4*R2^2*(R1+2*R2)*X2+(-6*R1*R2^4*X1-3*R2^5*X1-3*R1^5*X2-6*R1^4*R2*X2-2*R1^2*R2^3*(2*X1+X2)-2*R1^3*R2^2*(X1+2*X2))*z^2)+L2^2*(R1^2*R2^5*X1-3*R2^5*X1*z^2+R1^5*X2*(R2^2-3*z^2))),
   (-X1+X2)*(2*L2*(R1+R2)^2*(-(R1^2*R2^2*(R1+R2)*(R2^2*Y1+R1^2*Y2))+(3*R1*R2^4*Y1+3*R2^5*Y1+R1^3*R2^2*(Y1-2*Y2)+3*R1^5*Y2+3*R1^4*R2*Y2+R1^2*R2^3*(-2*Y1+Y2))*z^2)+(R1+R2)^4*(R1^2*R2^4*(2*R1+R2)*Y1+R1^4*R2^2*(R1+2*R2)*Y2+(-6*R1*R2^4*Y1-3*R2^5*Y1-3*R1^5*Y2-6*R1^4*R2*Y2-2*R1^2*R2^3*(2*Y1+Y2)-2*R1^3*R2^2*(Y1+2*Y2))*z^2)+L2^2*(R1^2*R2^5*Y1-3*R2^5*Y1*z^2+R1^5*Y2*(R2^2-3*z^2))),
   (Y1-Y2)*(-2*L2*(R1+R2)*(R1^2*R2^2*(R1+R2)^2*(R1^2+R2^2)-3*R2^5*(2*R1+R2)*Y1^2-2*R1^2*R2^2*(R1^2-R1*R2+R2^2)*Y1*Y2-3*R1^5*(R1+2*R2)*Y2^2)+(R1+R2)^3*(R1^2*R2^2*(R1+R2)^2*(R1^2+R1*R2+R2^2)+R2^4*(-8*R1^2-9*R1*R2-3*R2^2)*Y1^2-4*R1^2*R2^2*(R1^2+3*R1*R2+R2^2)*Y1*Y2+R1^4*(-3*R1^2-9*R1*R2-8*R2^2)*Y2^2)+L2^2*(R1^2*R2^5-3*R2^5*Y1^2+R1^5*(R2^2-3*Y2^2)))*z,
   (Y1-Y2)*z*(3*L2^2*(R1^2*R2^5+R1^5*(X2^2+Y2^2)-R2^5*z^2)+3*(R1+R2)^5*(R1^2*(R1*R2^3+R2^4+R1^2*(X2^2+Y2^2))-R2*(R1+R2)*(R1^2+R2^2)*z^2)-2*L2*(R1+R2)^3*(3*R1^4*(X2^2+Y2^2)-3*R2^4*z^2+R1^2*R2^2*(3*R2^2+z^2))),
   (-X1+X2)*z*(3*L2^2*(R1^2*R2^5+R1^5*(X2^2+Y2^2)-R2^5*z^2)+3*(R1+R2)^5*(R1^2*(R1*R2^3+R2^4+R1^2*(X2^2+Y2^2))-R2*(R1+R2)*(R1^2+R2^2)*z^2)-2*L2*(R1+R2)^3*(3*R1^4*(X2^2+Y2^2)-3*R2^4*z^2+R1^2*R2^2*(3*R2^2+z^2))),
   (Y1-Y2)*(2*L2*(R1+R2)^2*(-(R1^2*R2^2*(R1+R2)*(R2^2*Y1+R1^2*Y2))+(3*R1*R2^4*Y1+3*R2^5*Y1+R1^3*R2^2*(Y1-2*Y2)+3*R1^5*Y2+3*R1^4*R2*Y2+R1^2*R2^3*(-2*Y1+Y2))*z^2)+(R1+R2)^4*(R1^2*R2^4*(2*R1+R2)*Y1+R1^4*R2^2*(R1+2*R2)*Y2+(-6*R1*R2^4*Y1-3*R2^5*Y1-3*R1^5*Y2-6*R1^4*R2*Y2-2*R1^2*R2^3*(2*Y1+Y2)-2*R1^3*R2^2*(Y1+2*Y2))*z^2)+L2^2*(R1^2*R2^5*Y1-3*R2^5*Y1*z^2+R1^5*Y2*(R2^2-3*z^2)))}/(Pi*(R1*R2)^5*((R1+R2)^2-L2)^3)]


edgepotentialC4ii=Compile[{\[CapitalDelta]\[Theta],c\[Theta]1,s\[Theta]1,x,y,z},
  If[Abs[Mod[\[CapitalDelta]\[Theta],2\[Pi]]-\[Pi]]<edgepotentialstraighttol,
    {4*c\[Theta]1*s\[Theta]1^3*(-(s\[Theta]1*x)+c\[Theta]1*y)*z*(s\[Theta]1*x-c\[Theta]1*y+z)*(-(s\[Theta]1*x)+c\[Theta]1*y+z),
     s\[Theta]1^3*((s\[Theta]1*x-c\[Theta]1*y)*(-(s\[Theta]1*x)+c\[Theta]1*y-2*z)+z^2)*(z^2-(-(s\[Theta]1*x)+c\[Theta]1*y)*(-(s\[Theta]1*x)+c\[Theta]1*y+2*z)),
     -4*c\[Theta]1^2*s\[Theta]1^2*(-(s\[Theta]1*x)+c\[Theta]1*y)*z*(s\[Theta]1*x-c\[Theta]1*y+z)*(-(s\[Theta]1*x)+c\[Theta]1*y+z),
     -4*s\[Theta]1^2*(s\[Theta]1*x-c\[Theta]1*y)*z*(s\[Theta]1*x-c\[Theta]1*y+z)*(-(s\[Theta]1*x)+c\[Theta]1*y+z),
     4*c\[Theta]1^3*s\[Theta]1*(-(s\[Theta]1*x)+c\[Theta]1*y)*z*(s\[Theta]1*x-c\[Theta]1*y+z)*(-(s\[Theta]1*x)+c\[Theta]1*y+z),
     -(s\[Theta]1*((s\[Theta]1*x-c\[Theta]1*y)*(-(s\[Theta]1*x)+c\[Theta]1*y-2*z)+z^2)*(z^2-(-(s\[Theta]1*x)+c\[Theta]1*y)*(-(s\[Theta]1*x)+c\[Theta]1*y+2*z))),
     -(c\[Theta]1^3*((s\[Theta]1*x-c\[Theta]1*y)*(-(s\[Theta]1*x)+c\[Theta]1*y-2*z)+z^2)*(z^2-(-(s\[Theta]1*x)+c\[Theta]1*y)*(-(s\[Theta]1*x)+c\[Theta]1*y+2*z))),
     4*c\[Theta]1^2*(-(s\[Theta]1*x)+c\[Theta]1*y)*z*(s\[Theta]1*x-c\[Theta]1*y+z)*(-(s\[Theta]1*x)+c\[Theta]1*y+z),
     c\[Theta]1*((s\[Theta]1*x-c\[Theta]1*y)*(-(s\[Theta]1*x)+c\[Theta]1*y-2*z)+z^2)*(z^2-(-(s\[Theta]1*x)+c\[Theta]1*y)*(-(s\[Theta]1*x)+c\[Theta]1*y+2*z))}*6/(Pi*((y*c\[Theta]1-x*s\[Theta]1)^2+z^2)^4),
    {0,0,0,0,0,0,0,0,0}]]
edgepotentialC4ip=Compile[{c\[Theta]1,s\[Theta]1,R2,x,y,z},
  {s\[Theta]1*(8*R2^3*(R2^2-6*x^2)*y+c\[Theta]1^3*x*(2*R2^4+3*R2^2*x^2+15*x^4)*y+s\[Theta]1*(-3*R2^6+87*R2^2*x^2*y^2+R2^4*(15*x^2-17*y^2)-s\[Theta]1*y*(-4*R2+s\[Theta]1*y)*(R2^4-15*x^2*y^2-3*R2^2*(x-y)*(x+y)))+c\[Theta]1^2*(-4*R2*(2*R2^4+3*R2^2*x^2+15*x^4)*y+s\[Theta]1*(6*R2^6+45*x^4*y^2+3*R2^2*x^2*(x^2+y^2)+R2^4*(3*x^2+2*y^2)))+c\[Theta]1*(R2^2*x*(13*R2^2+87*x^2)*y+s\[Theta]1*x*(-12*R2*(R2^4+R2^2*x^2+10*x^2*y^2)+s\[Theta]1*y*(2*R2^2*(R2^2+3*x^2)-3*(R2^2-15*x^2)*y^2))))*z,
   s\[Theta]1*(c\[Theta]1^3*(-2*R2^4*x*y^2-15*x^5*(x^2+y^2)+R2^2*(9*x^5-3*x^3*y^2))+R2^3*(5*R2^4+3*x^2*(15*(x^2+y^2)-z^2)+R2^2*(-44*x^2-7*y^2+z^2))+c\[Theta]1*x*(s\[Theta]1*y*(-24*R2*x^2*(4*R2^2-5*(x^2+y^2))+s\[Theta]1*y*(-2*R2^4-45*x^2*(x^2+y^2)+3*R2^2*(13*x^2+y^2)))+R2^2*(14*R2^4+R2^2*(49*x^2-15*y^2-2*z^2)-3*x^2*(27*(x^2+y^2)-2*z^2)))+c\[Theta]1^2*(s\[Theta]1*y*(-2*R2^4*y^2-45*x^4*(x^2+y^2)+R2^2*(33*x^4-3*x^2*y^2))+R2*(-6*R2^6-R2^4*(x^2-8*y^2)+3*x^4*(19*(x^2+y^2)-z^2)+R2^2*x^2*(-32*x^2+13*y^2+z^2)))+s\[Theta]1*y*(R2^2*(-10*R2^4+R2^2*(79*x^2+15*y^2-2*z^2)-3*x^2*(27*(x^2+y^2)-2*z^2))+s\[Theta]1*y*(s\[Theta]1*y*(-2*R2^4-15*x^2*(x^2+y^2)+3*R2^2*(5*x^2+y^2))+R2*(7*R2^4+3*x^2*(19*(x^2+y^2)-z^2)+R2^2*(-56*x^2-11*y^2+z^2))))),
   s\[Theta]1*(8*R2^3*x*(R2^2-6*y^2)+s\[Theta]1^3*x*y*(2*R2^4+3*R2^2*y^2+15*y^4)+s\[Theta]1^2*(-4*R2*x*(2*R2^4+3*R2^2*y^2+15*y^4)+c\[Theta]1*(2*R2^4*(3*R2^2+x^2)+3*R2^2*(R2^2+x^2)*y^2+3*(R2^2+15*x^2)*y^4))+c\[Theta]1*(-3*R2^6+87*R2^2*x^2*y^2+R2^4*(-17*x^2+15*y^2)-c\[Theta]1*x*(-4*R2+c\[Theta]1*x)*(R2^4-15*x^2*y^2+3*R2^2*(x-y)*(x+y)))+s\[Theta]1*y*(R2^2*x*(13*R2^2+87*y^2)-12*c\[Theta]1*R2*(R2^4+(R2^2+10*x^2)*y^2)+c\[Theta]1^2*x*(2*R2^4+45*x^2*y^2-3*R2^2*(x^2-2*y^2))))*z,
   -3*s\[Theta]1*z*(s\[Theta]1^3*x*y^3*(3*R2^2-5*z^2)-8*R2^3*x*(R2^2-2*z^2)+c\[Theta]1*(3*R2^6-29*R2^2*x^2*z^2+R2^4*(17*x^2-5*z^2)+c\[Theta]1*x*(-4*R2+c\[Theta]1*x)*(R2^4-5*x^2*z^2+R2^2*(3*x^2-z^2)))+s\[Theta]1^2*y^2*(-12*R2^3*x+20*R2*x*z^2+c\[Theta]1*(R2^4-15*x^2*z^2+R2^2*(9*x^2-z^2)))+s\[Theta]1*y*(R2^2*x*(17*R2^2-29*z^2)+c\[Theta]1*(-4*R2^5+40*R2*x^2*z^2+4*R2^3*(-6*x^2+z^2)+c\[Theta]1*x*(2*R2^4-15*x^2*z^2+R2^2*(9*x^2-2*z^2))))),
   3*s\[Theta]1*(8*R2^3*y*(R2^2-2*y^2)+s\[Theta]1^3*(2*R2^6+R2^4*y^2+5*y^6)+c\[Theta]1*x*y*(-17*R2^4+29*R2^2*y^2-c\[Theta]1*x*(-4*R2+c\[Theta]1*x)*(3*R2^2-5*y^2))+s\[Theta]1^2*y*(-3*c\[Theta]1*x*y^2*(R2^2-5*y^2)-4*R2*(R2^4+5*y^4))-s\[Theta]1*(3*R2^6+2*R2^4*y^2-29*R2^2*y^4+c\[Theta]1*x*(c\[Theta]1*x*(R2^4+6*R2^2*y^2-15*y^4)-4*R2*(R2^4+3*R2^2*y^2-10*y^4))))*z,
   -3*s\[Theta]1*(-14*R2^7+16*R2^5*(x^2+y^2)+16*R2^3*z^4+(c\[Theta]1*x+s\[Theta]1*y)*(29*R2^6-34*R2^4*(x^2+y^2)-29*R2^2*z^4-(c\[Theta]1*x+s\[Theta]1*y)*(-4*R2+c\[Theta]1*x+s\[Theta]1*y)*(-5*R2^4+6*R2^2*(x^2+y^2)+5*z^4))),
   c\[Theta]1*(s\[Theta]1^3*y*(2*R2^4*x^2+3*R2^2*y^2*(x^2-3*y^2)+15*y^4*(x^2+y^2))+c\[Theta]1^3*x^3*(2*R2^4+15*y^2*(x^2+y^2)-3*R2^2*(x^2+5*y^2))-R2^2*s\[Theta]1*y*(14*R2^4+R2^2*(-15*x^2+49*y^2-2*z^2)-3*y^2*(27*(x^2+y^2)-2*z^2))-R2^3*(5*R2^4+3*y^2*(15*(x^2+y^2)-z^2)+R2^2*(-7*x^2-44*y^2+z^2))+R2*s\[Theta]1^2*(6*R2^6+R2^4*(-8*x^2+y^2)-R2^2*y^2*(13*x^2-32*y^2+z^2)+3*y^4*(-19*(x^2+y^2)+z^2))-c\[Theta]1^2*x^2*(s\[Theta]1*y*(-2*R2^4-45*y^2*(x^2+y^2)+3*R2^2*(x^2+13*y^2))+R2*(7*R2^4+3*y^2*(19*(x^2+y^2)-z^2)+R2^2*(-11*x^2-56*y^2+z^2)))+c\[Theta]1*x*(-24*R2*s\[Theta]1*y^3*(-4*R2^2+5*(x^2+y^2))+s\[Theta]1^2*(2*R2^4*x^2+3*R2^2*y^2*(x^2-11*y^2)+45*y^4*(x^2+y^2))+R2^2*(10*R2^4+3*y^2*(27*(x^2+y^2)-2*z^2)+R2^2*(-15*x^2-79*y^2+2*z^2)))),
   3*c\[Theta]1*z*(c\[Theta]1^3*x^3*y*(3*R2^2-5*z^2)-8*R2^3*y*(R2^2-2*z^2)+s\[Theta]1*(3*R2^6-29*R2^2*y^2*z^2+R2^4*(17*y^2-5*z^2)+s\[Theta]1*y*(-4*R2+s\[Theta]1*y)*(R2^4-5*y^2*z^2+R2^2*(3*y^2-z^2)))+c\[Theta]1^2*x^2*(-12*R2^3*y+20*R2*y*z^2+s\[Theta]1*(R2^4-15*y^2*z^2+R2^2*(9*y^2-z^2)))+c\[Theta]1*x*(R2^2*y*(17*R2^2-29*z^2)+s\[Theta]1*(-4*R2^5+40*R2*y^2*z^2+4*R2^3*(-6*y^2+z^2)+s\[Theta]1*y*(2*R2^4-15*y^2*z^2+R2^2*(9*y^2-2*z^2))))),
   3*c\[Theta]1*(-14*R2^7+16*R2^5*(x^2+y^2)+16*R2^3*z^4+(c\[Theta]1*x+s\[Theta]1*y)*(29*R2^6-34*R2^4*(x^2+y^2)-29*R2^2*z^4-(c\[Theta]1*x+s\[Theta]1*y)*(-4*R2+c\[Theta]1*x+s\[Theta]1*y)*(-5*R2^4+6*R2^2*(x^2+y^2)+5*z^4)))}/(2*Pi*R2^7*(R2 - c\[Theta]1*x - s\[Theta]1*y)^4)]
edgepotentialC4pp=Compile[{R1,R2,L2,X1,Y1,X2,Y2,z},
  {(Y1-Y2)*z*(L2^3*(-12*R1^2*R2^7*Y1+15*R2^7*Y1*(Y1^2+z^2)+R1^7*(-12*R2^2*Y2+15*Y2*(Y2^2+z^2)))+(R1+R2)^4*(-15*R2^9*Y1*(Y1^2+z^2)+R1^7*R2^2*(R2^2*(4*Y1+46*Y2)+Y2*(12*X1*X2+26*X2^2-6*Y1*Y2-61*Y2^2)+(-6*Y1-61*Y2)*z^2)+2*R1^5*R2^4*(2*X1^2*Y2+8*X1*X2*(Y1+4*Y2)+R2^2*(12*Y1+5*Y2)-2*Y1*(-4*X2^2+Y2*(Y1+4*Y2))-2*(4*Y1+Y2)*z^2)+2*R1^4*R2^5*(8*X1^2*Y2+8*X1*X2*(4*Y1+Y2)+R2^2*(23*Y1+2*Y2)-2*Y1*(-X2^2+4*Y1*Y2+Y2^2)-2*(Y1+4*Y2)*z^2)-4*R1*R2^8*Y1*(-2*X1^2+13*(Y1^2+z^2))+2*R1^3*R2^6*(20*R2^2*Y1+24*X1*X2*Y1+3*X1^2*(4*Y1+Y2)-3*(4*Y1+3*Y2)*(Y1^2+z^2))+R1^2*R2^7*(12*R2^2*Y1+26*X1^2*Y1+12*X1*X2*Y1-(61*Y1+6*Y2)*(Y1^2+z^2))+4*R1^8*R2*Y2*(10*R2^2+2*X2^2-13*(Y2^2+z^2))+R1^9*(12*R2^2*Y2-15*Y2*(Y2^2+z^2))+2*R1^6*R2^3*(24*X1*X2*Y2+3*X2^2*(Y1+4*Y2)+R2^2*(5*Y1+12*Y2)-3*(3*Y1+4*Y2)*(Y2^2+z^2)))-L2*(R1+R2)^2*(-45*R2^9*Y1*(Y1^2+z^2)+R1^7*R2^2*(R2^2*(8*Y1+122*Y2)+Y2*(24*X1*X2-4*X2^2-12*Y1*Y2-145*Y2^2)+(-12*Y1-145*Y2)*z^2)+2*R1^4*R2^5*(-22*X1^2*Y2+8*X1*X2*(-2*Y1+Y2)+R2^2*(61*Y1+4*Y2)-Y1*(X2^2+14*Y1*Y2+5*Y2^2)+(-5*Y1-14*Y2)*z^2)+2*R1^5*R2^4*(-22*X2^2*Y1+8*X1*X2*(Y1-2*Y2)-X1^2*Y2-5*Y1^2*Y2-14*Y1*Y2^2+R2^2*(30*Y1+11*Y2)-14*Y1*z^2-5*Y2*z^2)-2*R1*R2^8*Y1*(-4*X1^2+71*(Y1^2+z^2))+2*R1^3*R2^6*(56*R2^2*Y1+24*X1*X2*Y1-3*X1^2*(8*Y1+Y2)-3*(8*Y1+5*Y2)*(Y1^2+z^2))+R1^2*R2^7*(36*R2^2*Y1-4*X1^2*Y1+24*X1*X2*Y1-(145*Y1+12*Y2)*(Y1^2+z^2))+2*R1^8*R2*Y2*(56*R2^2+4*X2^2-71*(Y2^2+z^2))+R1^9*(36*R2^2*Y2-45*Y2*(Y2^2+z^2))+2*R1^6*R2^3*(24*X1*X2*Y2-3*X2^2*(Y1+8*Y2)+R2^2*(11*Y1+30*Y2)-3*(5*Y1+8*Y2)*(Y2^2+z^2)))+L2^2*(104*R1^3*R2^8*Y1+16*R1^6*R2^5*Y2-45*R2^9*Y1*(Y1^2+z^2)+R1^7*R2^2*(R2^2*(4*Y1+106*Y2)+Y2*(12*X1*X2-46*X2^2-6*Y1*Y2-115*Y2^2)+(-6*Y1-115*Y2)*z^2)+8*R1^5*R2^4*(2*R2^2*Y1-2*X2^2*Y1-Y2*(X1^2+Y1^2+2*Y1*Y2)-(2*Y1+Y2)*z^2)-8*R1*R2^8*Y1*(X1^2+16*(Y1^2+z^2))+R1^2*R2^7*(36*R2^2*Y1-46*X1^2*Y1+12*X1*X2*Y1-(115*Y1+6*Y2)*(Y1^2+z^2))+24*R1^8*R2*Y2*(4*R2^2-5*(Y2^2+z^2))+R1^9*(36*R2^2*Y2-45*Y2*(Y2^2+z^2))+2*R1^4*R2^5*(R2^2*(53*Y1+2*Y2)-4*(2*X1^2*Y2+Y1*(X2^2+2*Y1*Y2+Y2^2)+(Y1+2*Y2)*z^2)))),
   (-Y1+Y2)*((R1+R2)^5*(R1^2*R2^2*(2*R1*R2*(R1*R2*(R1^4+2*R1^3*R2+2*R1*R2^3+R2^4)+R2^3*(2*R1+R2)*X1^2+2*R1*R2*(R1^2+3*R1*R2+R2^2)*X1*X2+R1^3*(R1+4*R2)*X2^2)-R2^4*(R1+R2)*(4*R1+3*R2)*Y1^2+R1^5*(-3*R1-7*R2)*Y2^2)+(-15*R1^8*X2^2+R1^3*R2^5*(-35*R2^2-24*X1^2-36*X1*X2)+12*R1^5*R2^3*(R2^2-3*X1*X2-2*X2^2)+15*R2^8*Y1^2-3*R1^2*R2^6*(5*R2^2+6*X1^2+4*X1*X2-10*Y1^2)+R1*R2^7*(-8*X1^2+37*Y1^2)-2*R1^6*R2^2*(11*R2^2+6*X1*X2+9*X2^2-15*Y2^2)+R1^7*R2*(-35*R2^2-8*X2^2+37*Y2^2)-2*R1^4*R2^4*(13*R2^2+2*(X1^2+11*X1*X2+X2^2-Y1^2-Y2^2)))*z^2+R2*(37*R1^7+30*R1^6*R2+8*R1^4*R2^3+30*R1^2*R2^5+37*R1*R2^6+15*R2^7)*z^4)+L2^2*(R1+R2)*(R1^2*R2^2*(2*R1*R2*(3*R1*R2*(R1+R2)^2*(R1^2+R2^2)-R2^3*(4*R1+R2)*X1^2+2*R1*R2*(R1^2-R1*R2+R2^2)*X1*X2-R1^3*(R1+4*R2)*X2^2)-R2^4*(R1+R2)*(8*R1+9*R2)*Y1^2-R1^4*(R1+R2)*(9*R1+8*R2)*Y2^2)+(-45*R1^8*X2^2-12*R1^6*(R2^4+R2^2*X1*X2)-12*R1^5*(R2^5-R2^3*X1*X2)+45*R2^8*Y1^2-2*R1^4*R2^4*(21*R2^2-4*X1^2+6*X1*X2-4*Y1^2)+R1^3*R2^5*(-85*R2^2+8*X1^2+12*X1*X2+8*Y1^2)+R1^2*R2^6*(-45*R2^2+38*X1^2-12*X1*X2+38*Y1^2)+R1*R2^7*(8*X1^2+83*Y1^2)+R1^7*R2*(-85*R2^2+8*X2^2+83*Y2^2))*z^2+R2*(83*R1^7+8*R1^4*R2^3+8*R1^3*R2^4+38*R1^2*R2^5+83*R1*R2^6+45*R2^7)*z^4)+L2^3*(-2*R1^4*R2^7-15*R2^7*z^2*(Y1^2+z^2)+3*R1^2*R2^7*(Y1^2+5*z^2)+R1^7*(-2*R2^4+3*R2^2*Y2^2+15*X2^2*z^2))-L2*(R1+R2)^3*(45*R2^8*z^2*(Y1^2+z^2)+R1^8*(6*R2^4-9*R2^2*Y2^2-45*X2^2*z^2)-3*R1^2*R2^6*(3*R2^2*Y1^2+(15*R2^2-4*X1*(X1-2*X2)-20*Y1^2)*z^2-20*z^4)+2*R1^4*R2^4*(R2^2*(3*R2^2-X1*(X1-4*X2)-5*Y1^2)+(-31*R2^2+X1^2+20*X1*X2+5*Y1^2+4*Y2^2)*z^2+9*z^4)+2*R1^5*R2^3*(6*R2^4+4*R2^2*X1*X2+(-14*R2^2-12*X1*X2+21*X2^2+9*Y2^2)*z^2+9*z^4)+R1^3*R2^5*(R2^2*(2*X1^2-19*Y1^2)+(-95*R2^2+42*X1^2-24*X1*X2+18*Y1^2)*z^2+18*z^4)+R1*R2^7*z^2*(-8*X1^2+97*(Y1^2+z^2))+2*R1^6*R2^2*(5*R2^4+R2^2*(4*X1*X2-4*Y2^2-31*z^2)+6*z^2*(X2*(-2*X1+X2)+5*(Y2^2+z^2)))+R1^7*R2*(12*R2^4+R2^2*(2*X2^2-19*Y2^2-95*z^2)+z^2*(-8*X2^2+97*(Y2^2+z^2))))),
  (-Y1+Y2)*(-3*L2^3*(R1^2*R2^7*X1-5*R2^7*X1*Y1^2+R1^7*X2*(R2^2-5*Y2^2))+L2^2*(24*R1^3*R2^8*X1+R1^4*R2^7*(17*X1+2*X2)-120*R1*R2^8*X1*Y1^2-45*R2^9*X1*Y1^2+9*R1^9*X2*(R2^2-5*Y2^2)+24*R1^8*R2*X2*(R2^2-5*Y2^2)+3*R1^2*R2^7*(3*R2^2*X1+Y1*(-23*X1*Y1-2*X2*Y1-4*X1*Y2))+R1^7*R2^2*(R2^2*(2*X1+17*X2)-3*Y2*(4*X2*Y1+2*X1*Y2+23*X2*Y2)))-L2*(R1+R2)^2*(-150*R1*R2^8*X1*Y1^2-45*R2^9*X1*Y1^2+6*R1^3*R2^6*(5*R2^2*X1-4*X2*Y1^2-8*X1*Y1*Y2)+R1^4*R2^5*(R2^2*(33*X1+4*X2)+16*X2*Y1*(Y1-Y2)+8*X1*(4*Y1-Y2)*Y2)+9*R1^9*X2*(R2^2-5*Y2^2)+30*R1^8*R2*X2*(R2^2-5*Y2^2)+8*R1^5*R2^4*(R2^2*(2*X1+X2)-X2*Y1*(Y1-4*Y2)+2*X1*Y2*(-Y1+Y2))+3*R1^2*R2^7*(3*R2^2*X1+Y1*(-47*X1*Y1-4*X2*Y1-8*X1*Y2))+8*R1^6*R2^3*(R2^2*(X1+2*X2)-3*Y2*(2*X2*Y1+X1*Y2))+R1^7*R2^2*(R2^2*(4*X1+33*X2)-3*Y2*(8*X2*Y1+4*X1*Y2+47*X2*Y2)))+(R1+R2)^4*(-60*R1*R2^8*X1*Y1^2-15*R2^9*X1*Y1^2+3*R1^9*X2*(R2^2-5*Y2^2)+12*R1^8*R2*X2*(R2^2-5*Y2^2)+R1^4*R2^5*(R2^2*(19*X1+2*X2)-16*X2*Y1*(2*Y1+Y2)-8*X1*Y2*(8*Y1+Y2))+8*R1^5*R2^4*(R2^2*(2*X1+X2)-2*X1*Y2*(Y1+2*Y2)-X2*Y1*(Y1+8*Y2))+3*R1^2*R2^7*(R2^2*X1+Y1*(-29*X1*Y1-2*X2*Y1-4*X1*Y2))+R1^7*R2^2*(R2^2*(2*X1+19*X2)-3*Y2*(4*X2*Y1+2*X1*Y2+29*X2*Y2))+12*R1^3*R2^6*(R2^2*X1-2*Y1*(X2*Y1+2*X1*(Y1+Y2)))+8*R1^6*R2^3*(R2^2*(X1+2*X2)-3*Y2*(X1*Y2+2*X2*(Y1+Y2)))))*z,
   -3*(Y1-Y2)*z*(L2*(R1+R2)^4*(R1^2*R2^2*(-12*R1*R2^4*X1-9*R2^5*X1-9*R1^5*X2-12*R1^4*R2*X2-4*R1^2*R2^3*X2-4*R1^3*X1*(X2^2+Y2^2))+(-4*R1^3*R2^4*X1+20*R1*R2^6*X1+15*R2^7*X1+15*R1^7*X2+20*R1^6*R2*X2-4*R1^4*R2^3*X2+4*R1^2*R2^5*X2)*z^2)+(R1+R2)^6*(R1^2*R2^4*(2*R1^3+4*R1^2*R2+6*R1*R2^2+3*R2^3)*X1+R1^4*R2^2*(3*R1^3+6*R1^2*R2+4*R1*R2^2+2*R2^3)*X2+(-10*R1*R2^6*X1-5*R2^7*X1-5*R1^7*X2-10*R1^6*R2*X2-2*R1^2*R2^5*(4*X1+X2)-2*R1^3*R2^4*(3*X1+2*X2)-2*R1^4*R2^3*(2*X1+3*X2)-2*R1^5*R2^2*(X1+4*X2))*z^2)+L2^3*(-3*R1^2*R2^7*X1+5*R2^7*X1*z^2+R1^7*X2*(-3*R2^2+5*z^2))+L2^2*(24*R1^3*R2^8*X1+R1^4*R2^7*(17*X1+2*X2)-40*R1*R2^8*X1*z^2-15*R2^9*X1*z^2+R1^7*R2^2*(R2^2*(2*X1+17*X2)+(-2*X1-27*X2)*z^2)+R1^2*R2^7*(9*R2^2*X1+(-27*X1-2*X2)*z^2)+R1^9*(9*R2^2*X2-15*X2*z^2)+R1^8*(24*R2^3*X2-40*R2*X2*z^2))),
  -3*(Y1-Y2)*(-(L2*(R1+R2)^2*(R1^2*R2^4*(R1+R2)^2*(4*R1^3+12*R1*R2^2+9*R2^3)*Y1+R2^7*(-47*R1^2-50*R1*R2-15*R2^2)*Y1^3+R1^2*R2^2*(R1^2*(R1+R2)^2*(9*R1^3+12*R1^2*R2+4*R2^3)-4*R2^2*(2*R1^3-4*R1^2*R2+6*R1*R2^2+3*R2^3)*Y1^2)*Y2-4*R1^4*R2^2*(3*R1^3+6*R1^2*R2-4*R1*R2^2+2*R2^3)*Y1*Y2^2+R1^7*(-15*R1^2-50*R1*R2-47*R2^2)*Y2^3))+(R1+R2)^4*(R1^2*R2^4*(R1+R2)^2*(2*R1^3+4*R1^2*R2+6*R1*R2^2+3*R2^3)*Y1+R2^6*(-16*R1^3-29*R1^2*R2-20*R1*R2^2-5*R2^3)*Y1^3+R1^2*R2^2*(R1^2*(R1+R2)^2*(3*R1^3+6*R1^2*R2+4*R1*R2^2+2*R2^3)-2*R2^2*(4*R1^3+16*R1^2*R2+12*R1*R2^2+3*R2^3)*Y1^2)*Y2-2*R1^4*R2^2*(3*R1^3+12*R1^2*R2+16*R1*R2^2+4*R2^3)*Y1*Y2^2+R1^6*(-5*R1^3-20*R1^2*R2-29*R1*R2^2-16*R2^3)*Y2^3)+L2^3*(-3*R1^2*R2^7*Y1+5*R2^7*Y1^3+R1^7*(-3*R2^2*Y2+5*Y2^3))+L2^2*(24*R1^3*R2^8*Y1-40*R1*R2^8*Y1^3-15*R2^9*Y1^3+R1^4*R2^7*(17*Y1+2*Y2)+R1^2*R2^7*Y1*(9*R2^2-23*Y1^2-6*Y1*Y2)+R1^9*(9*R2^2*Y2-15*Y2^3)+R1^8*(24*R2^3*Y2-40*R2*Y2^3)+R1^7*R2^2*((-6*Y1-23*Y2)*Y2^2+R2^2*(2*Y1+17*Y2))))*z,
  3*(Y1-Y2)*(L2*(R1+R2)^5*(-(R1^4*R2^4*(3*R1^2+R1*R2+3*R2^2))+2*R1^2*R2^2*(9*R1^4+3*R1^3*R2+R1^2*R2^2+3*R1*R2^3+9*R2^4)*z^2+(-15*R1^6-5*R1^5*R2+R1^4*R2^2+3*R1^3*R2^3+R1^2*R2^4-5*R1*R2^5-15*R2^6)*z^4)+(R1+R2)^7*(R1^4*R2^4*(R1^2+R1*R2+R2^2)-6*R1^2*R2^2*(R1^4+R1^3*R2+R1^2*R2^2+R1*R2^3+R2^4)*z^2+5*(R1^6+R1^5*R2+R1^4*R2^2+R1^3*R2^3+R1^2*R2^4+R1*R2^5+R2^6)*z^4)+L2^2*(R1+R2)^3*(R1^4*R2^4*(3*R1^2-R1*R2+3*R2^2)-2*R1^2*R2^2*(9*R1^4-3*R1^3*R2+R1^2*R2^2-3*R1*R2^3+9*R2^4)*z^2+(15*R1^6-5*R1^5*R2-R1^4*R2^2+3*R1^3*R2^3-R1^2*R2^4-5*R1*R2^5+15*R2^6)*z^4)-L2^3*(R1^4*R2^4*(R1^3+R2^3)-6*R1^2*R2^2*(R1^5+R2^5)*z^2+5*(R1^7+R2^7)*z^4)),
  (-X1+X2)*(L2^2*(R1+R2)*(R1^4*R2^4*(R1+R2)^2*(3*R1^2-R1*R2+3*R2^2)-3*R1^2*R2^7*(5*R1+3*R2)*Y1^2-4*R1^4*R2^4*(R1^2-R1*R2+R2^2)*Y1*Y2-3*R1^7*R2^2*(3*R1+5*R2)*Y2^2+(-(R1^2*R2^2*(R1+R2)^2*(9*R1^4-3*R1^3*R2+R1^2*R2^2-3*R1*R2^3+9*R2^4))+15*R2^7*(5*R1+3*R2)*Y1^2+12*R1^2*R2^2*(R1^4-R1^3*R2+R1^2*R2^2-R1*R2^3+R2^4)*Y1*Y2+15*R1^7*(3*R1+5*R2)*Y2^2)*z^2)+(R1+R2)^5*(R1^4*R2^4*(R1+R2)^2*(R1^2+R1*R2+R2^2)+R1^2*R2^6*(-8*R1^2-9*R1*R2-3*R2^2)*Y1^2-4*R1^4*R2^4*(R1^2+3*R1*R2+R2^2)*Y1*Y2+R1^6*R2^2*(-3*R1^2-9*R1*R2-8*R2^2)*Y2^2+(-3*R1^2*R2^2*(R1+R2)^2*(R1^4+R1^3*R2+R1^2*R2^2+R1*R2^3+R2^4)+R2^4*(8*R1^4+24*R1^3*R2+48*R1^2*R2^2+45*R1*R2^3+15*R2^4)*Y1^2+4*R1^2*R2^2*(3*R1^4+9*R1^3*R2+11*R1^2*R2^2+9*R1*R2^3+3*R2^4)*Y1*Y2+R1^4*(15*R1^4+45*R1^3*R2+48*R1^2*R2^2+24*R1*R2^3+8*R2^4)*Y2^2)*z^2)-L2*(R1+R2)^3*(R1^4*R2^4*(3*R1^4+7*R1^3*R2+7*R1*R2^3+3*R2^4+8*R1^2*X2^2)+R1^2*R2^6*(-8*R1^2-21*R1*R2-9*R2^2)*Y1^2-8*R1^4*R2^4*(R1^2+R1*R2+R2^2)*Y1*Y2-3*R1^7*R2^2*(3*R1+7*R2)*Y2^2+(105*R1*R2^7*Y1^2+45*R2^8*Y1^2-3*R1^3*R2^5*(7*R2^2+8*Y1*(Y1-Y2))-9*R1^8*(R2^2-5*Y2^2)+8*R1^4*R2^4*(-2*R2^2+Y1^2-5*Y1*Y2+Y2^2)-21*R1^7*(R2^3-5*R2*Y2^2)-8*R1^5*R2^3*(R2^2+3*Y2*(-Y1+Y2))-3*R1^2*R2^6*(3*R2^2-8*Y1*(2*Y1+Y2))-8*R1^6*R2^2*(R2^2-3*Y2*(Y1+2*Y2)))*z^2)-L2^3*(R1^4*R2^7+15*R2^7*Y1^2*z^2-3*R1^2*R2^7*(Y1^2+z^2)+R1^7*(R2^4+15*Y2^2*z^2-3*R2^2*(Y2^2+z^2)))),
  3*(X1-X2)*z*(L2*(R1+R2)^4*(R1^2*R2^2*(-12*R1*R2^4*Y1-9*R2^5*Y1-9*R1^5*Y2-12*R1^4*R2*Y2-4*R1^2*R2^3*Y2-4*R1^3*Y1*(X2^2+Y2^2))+(-4*R1^3*R2^4*Y1+20*R1*R2^6*Y1+15*R2^7*Y1+15*R1^7*Y2+20*R1^6*R2*Y2-4*R1^4*R2^3*Y2+4*R1^2*R2^5*Y2)*z^2)+(R1+R2)^6*(R1^2*R2^4*(2*R1^3+4*R1^2*R2+6*R1*R2^2+3*R2^3)*Y1+R1^4*R2^2*(3*R1^3+6*R1^2*R2+4*R1*R2^2+2*R2^3)*Y2+(-10*R1*R2^6*Y1-5*R2^7*Y1-5*R1^7*Y2-10*R1^6*R2*Y2-2*R1^2*R2^5*(4*Y1+Y2)-2*R1^3*R2^4*(3*Y1+2*Y2)-2*R1^4*R2^3*(2*Y1+3*Y2)-2*R1^5*R2^2*(Y1+4*Y2))*z^2)+L2^3*(-3*R1^2*R2^7*Y1+5*R2^7*Y1*z^2+R1^7*Y2*(-3*R2^2+5*z^2))+L2^2*(24*R1^3*R2^8*Y1+R1^4*R2^7*(17*Y1+2*Y2)-40*R1*R2^8*Y1*z^2-15*R2^9*Y1*z^2+R1^7*R2^2*(R2^2*(2*Y1+17*Y2)+(-2*Y1-27*Y2)*z^2)+R1^2*R2^7*(9*R2^2*Y1+(-27*Y1-2*Y2)*z^2)+R1^9*(9*R2^2*Y2-15*Y2*z^2)+R1^8*(24*R2^3*Y2-40*R2*Y2*z^2))),
  -3*(X1-X2)*(L2*(R1+R2)^5*(-(R1^4*R2^4*(3*R1^2+R1*R2+3*R2^2))+2*R1^2*R2^2*(9*R1^4+3*R1^3*R2+R1^2*R2^2+3*R1*R2^3+9*R2^4)*z^2+(-15*R1^6-5*R1^5*R2+R1^4*R2^2+3*R1^3*R2^3+R1^2*R2^4-5*R1*R2^5-15*R2^6)*z^4)+(R1+R2)^7*(R1^4*R2^4*(R1^2+R1*R2+R2^2)-6*R1^2*R2^2*(R1^4+R1^3*R2+R1^2*R2^2+R1*R2^3+R2^4)*z^2+5*(R1^6+R1^5*R2+R1^4*R2^2+R1^3*R2^3+R1^2*R2^4+R1*R2^5+R2^6)*z^4)+L2^2*(R1+R2)^3*(R1^4*R2^4*(3*R1^2-R1*R2+3*R2^2)-2*R1^2*R2^2*(9*R1^4-3*R1^3*R2+R1^2*R2^2-3*R1*R2^3+9*R2^4)*z^2+(15*R1^6-5*R1^5*R2-R1^4*R2^2+3*R1^3*R2^3-R1^2*R2^4-5*R1*R2^5+15*R2^6)*z^4)-L2^3*(R1^4*R2^4*(R1^3+R2^3)-6*R1^2*R2^2*(R1^5+R2^5)*z^2+5*(R1^7+R2^7)*z^4))}/(Pi*(R1*R2)^7*((R1+R2)^2-L2)^4)]


edgepotentialC5ii=Compile[{\[CapitalDelta]\[Theta],c\[Theta]1,s\[Theta]1,x,y,z},
  If[Abs[Mod[\[CapitalDelta]\[Theta],2\[Pi]]-\[Pi]]<edgepotentialstraighttol,
    {c\[Theta]1^2*s\[Theta]1^3*z*(z^4+5*(-(s\[Theta]1*x)+c\[Theta]1*y)^2*((-(s\[Theta]1*x)+c\[Theta]1*y)^2-2*z^2)),
     -(c\[Theta]1*s\[Theta]1^3*(-(s\[Theta]1*x)+c\[Theta]1*y)*(5*z^4+(-(s\[Theta]1*x)+c\[Theta]1*y)^2*((-(s\[Theta]1*x)+c\[Theta]1*y)^2-10*z^2))),
     -(s\[Theta]1^3*z*(z^4+5*(-(s\[Theta]1*x)+c\[Theta]1*y)^2*((-(s\[Theta]1*x)+c\[Theta]1*y)^2-2*z^2))),
     -(c\[Theta]1^3*s\[Theta]1^2*z*(z^4+5*(-(s\[Theta]1*x)+c\[Theta]1*y)^2*((-(s\[Theta]1*x)+c\[Theta]1*y)^2-2*z^2))),
     c\[Theta]1^2*s\[Theta]1^2*(-(s\[Theta]1*x)+c\[Theta]1*y)*(5*z^4+(-(s\[Theta]1*x)+c\[Theta]1*y)^2*((-(s\[Theta]1*x)+c\[Theta]1*y)^2-10*z^2)),
     c\[Theta]1*s\[Theta]1^2*z*(z^4+5*(-(s\[Theta]1*x)+c\[Theta]1*y)^2*((-(s\[Theta]1*x)+c\[Theta]1*y)^2-2*z^2)),
     s\[Theta]1^2*(s\[Theta]1*x-c\[Theta]1*y)*(5*z^4+(-(s\[Theta]1*x)+c\[Theta]1*y)^2*((-(s\[Theta]1*x)+c\[Theta]1*y)^2-10*z^2)),
     -(c\[Theta]1^3*s\[Theta]1*(-(s\[Theta]1*x)+c\[Theta]1*y)*(5*z^4+(-(s\[Theta]1*x)+c\[Theta]1*y)^2*((-(s\[Theta]1*x)+c\[Theta]1*y)^2-10*z^2))),
     -(c\[Theta]1^2*s\[Theta]1*z*(z^4+5*(-(s\[Theta]1*x)+c\[Theta]1*y)^2*((-(s\[Theta]1*x)+c\[Theta]1*y)^2-2*z^2))),
     c\[Theta]1^3*z*(z^4+5*(-(s\[Theta]1*x)+c\[Theta]1*y)^2*((-(s\[Theta]1*x)+c\[Theta]1*y)^2-2*z^2)),
     -(c\[Theta]1^2*(-(s\[Theta]1*x)+c\[Theta]1*y)*(5*z^4+(-(s\[Theta]1*x)+c\[Theta]1*y)^2*((-(s\[Theta]1*x)+c\[Theta]1*y)^2-10*z^2)))}*24/(Pi*((y*c\[Theta]1-x*s\[Theta]1)^2+z^2)^5),
    {0,0,0,0,0,0,0,0,0,0,0}]]
edgepotentialC5ip=Compile[{c\[Theta]1,s\[Theta]1,R2,x,y,z},
  {s\[Theta]1*(8*R2^8+384*R2^4*x^2*y^2-48*R2^6*(x^2+y^2)+c\[Theta]1^4*x^2*(-2*R2^6+105*x^4*y^2-15*R2^2*x^2*(x-y)*(x+y)-3*R2^4*(x^2-2*y^2))+c\[Theta]1^3*x*(10*R2^7-525*R2*x^4*y^2+75*R2^3*x^2*(x-y)*(x+y)+15*R2^5*(x^2-2*y^2)+2*s\[Theta]1*y*(4*R2^6+210*x^4*y^2-15*R2^2*x^2*(x-y)*(x+y)+6*R2^4*(x^2+y^2)))+s\[Theta]1*(5*R2^3*y*(R2^4-195*x^2*y^2+R2^2*(-15*x^2+27*y^2))+s\[Theta]1*(-8*R2^8+1035*R2^2*x^2*y^4+R2^6*(48*x^2-25*y^2)+R2^4*(135*x^2*y^2-147*y^4)-s\[Theta]1*y*(-5*R2+s\[Theta]1*y)*(2*R2^6-105*x^2*y^4+3*R2^4*(-2*x^2+y^2)+15*R2^2*y^2*(-x^2+y^2))))+c\[Theta]1^2*(-8*R2^8+1035*R2^2*x^4*y^2+R2^6*(-25*x^2+48*y^2)+R2^4*(-147*x^4+135*x^2*y^2)+s\[Theta]1*(-50*R2^7*y-1575*R2*x^4*y^3+75*R2^3*x^2*(x-y)*y*(x+y)+R2^5*(-75*x^2*y-30*y^3)+s\[Theta]1*(24*R2^8+630*x^4*y^4+10*R2^6*(x^2+y^2)+6*R2^4*(x^4+5*x^2*y^2+y^4))))+c\[Theta]1*x*(5*R2^5*(R2^2+27*x^2)-75*R2^3*(R2^2+13*x^2)*y^2+s\[Theta]1*(142*R2^6*y+2070*R2^2*x^2*y^3-12*R2^4*y*(x^2+y^2)+s\[Theta]1*(-50*R2^7-30*R2^5*x^2-75*R2^3*(R2^2+x^2)*y^2+75*R2*(R2^2-21*x^2)*y^4-2*s\[Theta]1*y*(-4*R2^6-210*x^2*y^4+15*R2^2*y^2*(-x^2+y^2)-6*R2^4*(x^2+y^2))))))*z,
   s\[Theta]1*(c\[Theta]1^4*x^2*y*(4*R2^6+6*R2^4*(x-y)*(x+y)-105*x^4*(x^2+y^2)+R2^2*(75*x^4-15*x^2*y^2))-2*R2^4*y*(17*R2^4+12*x^2*(15*(x^2+y^2)-z^2)+3*R2^2*(-59*x^2-7*y^2+z^2))+c\[Theta]1^3*x*(s\[Theta]1*(2*R2^6*y^2-420*x^4*y^2*(x^2+y^2)+3*R2^4*(x^4+x^2*y^2-4*y^4)-15*R2^2*(x^6-21*x^4*y^2+2*x^2*y^4))+R2*y*(-20*R2^6+R2^4*(-34*x^2+30*y^2)+3*x^4*(169*(x^2+y^2)-6*z^2)+R2^2*x^2*(-353*x^2+79*y^2+4*z^2)))+c\[Theta]1^2*(s\[Theta]1^2*y*(4*R2^6*x^2+21*R2^4*x^4-45*R2^2*x^6+(-2*R2^6-21*R2^4*x^2+495*R2^2*x^4-630*x^6)*y^2-6*(R2^4+105*x^4)*y^4)+R2^2*y*(40*R2^6+R2^4*(76*x^2-48*y^2)+R2^2*x^2*(679*x^2-149*y^2-14*z^2)-15*x^4*(65*(x^2+y^2)-4*z^2))+R2*s\[Theta]1*(-24*R2^8-2*R2^6*(x^2-5*y^2)+9*x^4*y^2*(169*(x^2+y^2)-6*z^2)+3*R2^2*x^2*(23*x^4-380*x^2*y^2+29*y^4-2*(x^2-2*y^2)*z^2)+R2^4*(-7*x^4+30*y^4+x^2*(5*y^2+2*z^2))))+c\[Theta]1*x*(R2^3*y*(-86*R2^4+3*x^2*(303*(x^2+y^2)-22*z^2)+R2^2*(-683*x^2+91*y^2+16*z^2))+s\[Theta]1*(R2^2*(64*R2^6+R2^4*(29*x^2-53*y^2-4*z^2)-30*x^2*y^2*(65*(x^2+y^2)-4*z^2)+R2^2*(-129*x^4-16*y^4-28*y^2*z^2+x^2*(1511*y^2+12*z^2)))+s\[Theta]1*y*(s\[Theta]1*y*(2*R2^6+R2^4*(33*x^2-27*y^2)-420*x^2*y^2*(x^2+y^2)+R2^2*(-45*x^4+345*x^2*y^2+30*y^4))+R2*(-24*R2^6+9*x^2*y^2*(169*(x^2+y^2)-6*z^2)+R2^4*(-74*x^2+82*y^2+4*z^2)+R2^2*(138*x^4-63*y^4+12*y^2*z^2+x^2*(-1221*y^2-12*z^2))))))+s\[Theta]1*(R2^3*(10*R2^6+3*x^2*y^2*(303*(x^2+y^2)-22*z^2)+R2^4*(-97*x^2+81*y^2+2*z^2)+R2^2*(99*x^4-119*y^4+16*y^2*z^2+x^2*(-794*y^2-6*z^2)))+s\[Theta]1*y*(R2^2*(-16*R2^6+R2^4*(125*x^2-81*y^2-4*z^2)-15*x^2*y^2*(65*(x^2+y^2)-4*z^2)+R2^2*(-129*x^4+133*y^4-14*y^2*z^2+x^2*(832*y^2+12*z^2)))+s\[Theta]1*y*(s\[Theta]1*y*(-2*R2^6+R2^4*(15*x^2-9*y^2)-105*x^2*y^2*(x^2+y^2)-15*R2^2*(x^4-6*x^2*y^2-y^4))+R2*(8*R2^6+3*x^2*y^2*(169*(x^2+y^2)-6*z^2)+R2^4*(-67*x^2+43*y^2+2*z^2)+R2^2*(69*x^4-71*y^4+4*y^2*z^2+x^2*(-434*y^2-6*z^2))))))),
   -(s\[Theta]1*z*(3*c\[Theta]1^4*x^2*(2*R2^6+3*R2^4*x^2+15*R2^2*x^4+(-2*R2^4-5*R2^2*x^2-35*x^4)*z^2)-3*R2^4*(5*R2^4+R2^2*(-34*x^2+3*y^2-13*z^2)+x^2*(-11*(x^2+y^2)+117*z^2))+c\[Theta]1^3*x*(6*s\[Theta]1*y*(2*R2^6+3*R2^4*x^2+30*R2^2*x^4+(-2*R2^4-5*R2^2*x^2-70*x^4)*z^2)+R2*(-30*R2^6-21*x^4*(x^2+y^2-24*z^2)+R2^4*(-50*x^2+30*z^2)+R2^2*x^2*(-199*x^2+5*y^2+80*z^2)))+c\[Theta]1^2*(R2^2*(24*R2^6+R2^2*x^2*(347*x^2-19*y^2-154*z^2)+15*x^4*(5*(x^2+y^2)-64*z^2)+R2^4*(94*x^2-48*z^2))+3*s\[Theta]1*y*(2*s\[Theta]1*y*(R2^6+45*R2^2*x^4-R2^4*z^2-105*x^4*z^2)+R2*(-10*R2^6-21*x^4*(x^2+y^2-24*z^2)+10*R2^4*(-2*x^2+z^2)+R2^2*x^2*(-199*x^2+5*y^2+30*z^2))))+s\[Theta]1*y*(R2^3*(52*R2^4-3*x^2*(29*(x^2+y^2)-296*z^2)+R2^2*(-295*x^2+23*y^2-112*z^2))+s\[Theta]1*y*(R2^2*(-68*R2^4+15*x^2*(5*(x^2+y^2)-64*z^2)+R2^2*(347*x^2-19*y^2+128*z^2))+s\[Theta]1*y*(R2*(40*R2^4+R2^2*(-199*x^2+5*y^2-70*z^2)-21*x^2*(x^2+y^2-24*z^2))-3*s\[Theta]1*y*(3*R2^4+35*x^2*z^2-5*R2^2*(3*x^2+z^2)))))+c\[Theta]1*x*(R2^3*(-38*R2^4-3*x^2*(29*(x^2+y^2)-296*z^2)+R2^2*(-295*x^2+23*y^2+98*z^2))+s\[Theta]1*y*(2*R2^2*(13*R2^4+15*x^2*(5*(x^2+y^2)-64*z^2)+R2^2*(347*x^2-19*y^2-13*z^2))+3*s\[Theta]1*y*(R2*(10*R2^4-21*x^2*(x^2+y^2-24*z^2)+R2^2*(-199*x^2+5*y^2-20*z^2))-2*s\[Theta]1*y*(3*R2^4+70*x^2*z^2-5*R2^2*(6*x^2+z^2))))))),
   3*s\[Theta]1*(c\[Theta]1^4*x^3*y*(-3*R2^4+35*x^2*y^2+5*R2^2*(-3*x^2+y^2))+c\[Theta]1^3*x^2*(15*R2^3*(R2^2+5*x^2)*y-25*R2*(R2^2+7*x^2)*y^3+s\[Theta]1*(-2*R2^6+140*x^2*y^4+15*R2^2*y^2*(-3*x^2+y^2)-3*R2^4*(x^2+y^2)))+c\[Theta]1^2*x*(-27*R2^6*y+345*R2^2*x^2*y^3+R2^4*(-147*x^2*y+47*y^3)+s\[Theta]1*(10*R2^7+15*R2^5*x^2-525*R2*x^2*y^4-50*R2^3*y^2*(-3*x^2+y^2)+s\[Theta]1*y*(2*R2^6+210*x^2*y^4-3*R2^4*(x-y)*(x+y)+15*R2^2*y^2*(-3*x^2+y^2))))+x*(-48*R2^6*y+128*R2^4*y^3+s\[Theta]1*(15*R2^7+30*R2^5*y^2-325*R2^3*y^4+s\[Theta]1*(21*R2^6*y-6*R2^4*y^3+345*R2^2*y^5+s\[Theta]1*(-5*R2+s\[Theta]1*y)*(2*R2^6+3*R2^4*y^2+35*y^6))))+c\[Theta]1*(15*R2^7*y-325*R2^3*x^2*y^3+R2^5*(135*x^2*y-35*y^3)+s\[Theta]1*(-8*R2^8+690*R2^2*x^2*y^4+R2^6*(-27*x^2+21*y^2)+R2^4*(-153*x^2*y^2+47*y^4)+s\[Theta]1*(-20*R2^7*y-15*R2^3*(R2^2-5*x^2)*y^3-25*R2*(R2^2+21*x^2)*y^5+s\[Theta]1*(8*R2^8+140*x^2*y^6+5*R2^2*y^4*(-3*x^2+y^2)+3*R2^4*y^2*(x^2+y^2)+2*R2^6*(x^2+2*y^2))))))*z,
   s\[Theta]1*(c\[Theta]1^4*x^3*(-2*R2^6-105*x^2*y^2*(x^2+y^2)+R2^4*(-9*x^2+15*y^2)+15*R2^2*(x^4+6*x^2*y^2-y^4))+c\[Theta]1^2*x*(s\[Theta]1^2*(-2*R2^6*(x^2-2*y^2)-45*R2^2*y^4*(-11*x^2+y^2)-630*x^2*y^4*(x^2+y^2)+R2^4*(-6*x^4-21*x^2*y^2+21*y^4))+R2^2*(-16*R2^6+R2^4*(-90*x^2+125*y^2-4*z^2)+15*x^2*y^2*(-68*(x^2+y^2)+z^2)+R2^2*(142*x^4-129*y^4+12*y^2*z^2+x^2*(886*y^2-5*z^2)))-R2*s\[Theta]1*y*(24*R2^6+R2^4*(-91*x^2+74*y^2-4*z^2)+9*x^2*y^2*(-174*(x^2+y^2)+z^2)+R2^2*(72*x^4-138*y^4+12*y^2*z^2+x^2*(1275*y^2-3*z^2))))+c\[Theta]1^3*x^2*(s\[Theta]1*y*(2*R2^6-420*x^2*y^2*(x^2+y^2)+R2^4*(-27*x^2+33*y^2)+R2^2*(30*x^4+345*x^2*y^2-45*y^4))+R2*(8*R2^6+3*x^2*y^2*(174*(x^2+y^2)-z^2)+R2^4*(46*x^2-67*y^2+2*z^2)+R2^2*(-74*x^4+69*y^4-6*y^2*z^2+x^2*(-452*y^2+z^2))))+c\[Theta]1*(s\[Theta]1^3*y*(2*R2^6*x^2-420*x^2*y^4*(x^2+y^2)+3*R2^4*(-4*x^4+x^2*y^2+y^4)-15*R2^2*(2*x^4*y^2-21*x^2*y^4+y^6))+R2^2*s\[Theta]1*y*(64*R2^6+R2^4*(-71*x^2+29*y^2-4*z^2)+30*x^2*y^2*(-68*(x^2+y^2)+z^2)+R2^2*(2*x^4-129*y^4+12*y^2*z^2+x^2*(1619*y^2-10*z^2)))-R2*s\[Theta]1^2*(24*R2^8+2*R2^6*(-5*x^2+y^2)+9*x^2*y^4*(-174*(x^2+y^2)+z^2)+R2^4*(-30*x^4-14*x^2*y^2+7*y^4-2*y^2*z^2)-3*R2^2*y^2*(26*x^4+23*y^4-2*y^2*z^2+x^2*(-398*y^2+z^2)))+R2^3*(10*R2^6+3*x^2*y^2*(318*(x^2+y^2)-7*z^2)+R2^4*(90*x^2-97*y^2+2*z^2)+R2^2*(-128*x^4+99*y^4-6*y^2*z^2+x^2*(-848*y^2+7*z^2))))+x*(R2^4*(-37*R2^4+R2^2*(45*x^2+372*y^2-3*z^2)-3*y^2*(125*(x^2+y^2)-3*z^2))+s\[Theta]1*(R2^3*y*(-77*R2^4+3*y^2*(318*(x^2+y^2)-7*z^2)+R2^2*(82*x^2-737*y^2+7*z^2))+s\[Theta]1*(R2^2*(40*R2^6+R2^4*(-48*x^2+67*y^2)+R2^2*y^2*(-140*x^2+733*y^2-5*z^2)+15*y^4*(-68*(x^2+y^2)+z^2))+s\[Theta]1*y*(s\[Theta]1*y*(4*R2^6-6*R2^4*(x-y)*(x+y)-15*R2^2*y^2*(x^2-5*y^2)-105*y^4*(x^2+y^2))+R2*(-20*R2^6+R2^4*(30*x^2-31*y^2)+3*y^4*(174*(x^2+y^2)-z^2)+R2^2*y^2*(76*x^2-371*y^2+z^2))))))),
   -3*s\[Theta]1*z*(c\[Theta]1^4*x^3*y*(3*R2^4-35*x^2*z^2+R2^2*(15*x^2-5*z^2))+c\[Theta]1^3*x^2*(-15*R2^3*(R2^2+5*x^2)*y+25*R2*(R2^2+7*x^2)*y*z^2+s\[Theta]1*(2*R2^6+60*R2^2*x^2*y^2+3*R2^4*(x^2+3*y^2)+(-2*R2^4-140*x^2*y^2-5*R2^2*(x^2+3*y^2))*z^2))+c\[Theta]1^2*x*(R2^2*y*(27*R2^4-345*x^2*z^2+R2^2*(147*x^2-47*z^2))+s\[Theta]1*(-10*R2^7-225*R2^3*x^2*y^2-15*R2^5*(x^2+2*y^2)+5*R2*(2*R2^4+105*x^2*y^2+5*R2^2*(x^2+2*y^2))*z^2+s\[Theta]1*y*(4*R2^6+90*R2^2*x^2*y^2+9*R2^4*(x^2+y^2)+(-4*R2^4-210*x^2*y^2-15*R2^2*(x^2+y^2))*z^2)))+x*(48*R2^6*y-128*R2^4*y*z^2+s\[Theta]1*(-15*R2^7+325*R2^3*y^2*z^2+R2^5*(-135*y^2+35*z^2)+s\[Theta]1*y*(27*R2^6-345*R2^2*y^2*z^2+R2^4*(147*y^2-47*z^2)+s\[Theta]1*y*(-5*R2+s\[Theta]1*y)*(3*R2^2*(R2^2+5*y^2)-5*(R2^2+7*y^2)*z^2))))+c\[Theta]1*(-5*R2^3*y*(3*R2^4-65*x^2*z^2+R2^2*(27*x^2-7*z^2))+s\[Theta]1*(8*R2^8+294*R2^4*x^2*y^2+27*R2^6*(x^2+y^2)+R2^2*(-16*R2^4-690*x^2*y^2-47*R2^2*(x^2+y^2))*z^2+s\[Theta]1*y*(-10*R2^7-225*R2^3*x^2*y^2-15*R2^5*(2*x^2+y^2)+5*R2*(2*R2^4+105*x^2*y^2+5*R2^2*(2*x^2+y^2))*z^2+s\[Theta]1*y*(2*R2^6+60*R2^2*x^2*y^2+3*R2^4*(3*x^2+y^2)+(-2*R2^4-140*x^2*y^2-5*R2^2*(3*x^2+y^2))*z^2))))),
   -3*s\[Theta]1*(c\[Theta]1^4*x^3*(5*R2^6+R2^4*(21*x^2-6*y^2)-35*x^2*z^4-5*R2^2*(6*x^2*(x^2+y^2)+z^4))+c\[Theta]1^3*x^2*(-25*R2^7+R2^5*(-105*x^2+30*y^2)+175*R2*x^2*z^4+25*R2^3*(6*x^2*(x^2+y^2)+z^4)+s\[Theta]1*y*(15*R2^6+R2^4*(90*x^2-18*y^2)-140*x^2*z^4-15*R2^2*(8*x^2*(x^2+y^2)+z^4)))+c\[Theta]1^2*x*(47*R2^8+R2^6*(211*x^2-54*y^2)-345*R2^2*x^2*z^4+R2^4*(-294*x^2*(x^2+y^2)-47*z^4)+s\[Theta]1*y*(-50*R2^7+R2^5*(-345*x^2+60*y^2)+525*R2*x^2*z^4+50*R2^3*(9*x^2*(x^2+y^2)+z^4)-3*s\[Theta]1*y*(-5*R2^6+6*R2^4*(-8*x^2+y^2)+70*x^2*z^4+5*R2^2*(12*x^2*(x^2+y^2)+z^4))))+x*(88*R2^8-96*R2^6*(x^2+y^2)-128*R2^4*z^4+s\[Theta]1*y*(-245*R2^7+270*R2^5*(x^2+y^2)+325*R2^3*z^4+s\[Theta]1*y*(265*R2^6-294*R2^4*(x^2+y^2)-345*R2^2*z^4-s\[Theta]1*y*(-5*R2+s\[Theta]1*y)*(-27*R2^4+30*R2^2*(x^2+y^2)+35*z^4))))+c\[Theta]1*(-27*R2^9+R2^7*(-215*x^2+30*y^2)+325*R2^3*x^2*z^4+R2^5*(270*x^2*(x^2+y^2)+35*z^4)+s\[Theta]1*y*(47*R2^8+R2^6*(476*x^2-54*y^2)-690*R2^2*x^2*z^4+R2^4*(-588*x^2*(x^2+y^2)-47*z^4)+s\[Theta]1*y*(-25*R2^7+R2^5*(-375*x^2+30*y^2)+525*R2*x^2*z^4+25*R2^3*(18*x^2*(x^2+y^2)+z^4)+s\[Theta]1*y*(5*R2^6+R2^4*(102*x^2-6*y^2)-140*x^2*z^4-5*R2^2*(24*x^2*(x^2+y^2)+z^4)))))),
   -3*s\[Theta]1*(s\[Theta]1^4*y*(2*R2^6*x^2-30*R2^2*y^6+3*R2^4*y^2*(x^2+y^2)+35*y^6*(x^2+y^2))+c\[Theta]1^4*x^4*y*(12*R2^4+35*y^2*(x^2+y^2)-15*R2^2*(x^2+3*y^2))+2*R2^4*y*(17*R2^4+y^2*(57*(x^2+y^2)-7*z^2)+R2^2*(-21*x^2-70*y^2+3*z^2))+R2^2*s\[Theta]1^2*y*(-24*R2^6+15*y^4*(21*(x^2+y^2)-2*z^2)+2*R2^2*y^2*(-2*x^2-135*y^2+z^2)+R2^4*(25*x^2+27*y^2+4*z^2))+R2*s\[Theta]1^3*(8*R2^8+142*R2^2*y^6+2*R2^6*(-5*x^2+y^2)+R2^4*y^2*(-17*(x^2+y^2)-2*z^2)+y^6*(-167*(x^2+y^2)+8*z^2))+R2^3*s\[Theta]1*(-10*R2^6+2*R2^2*y^2*(10*x^2+132*y^2-5*z^2)+R2^4*(13*x^2+3*y^2-2*z^2)+y^4*(-289*(x^2+y^2)+36*z^2))+c\[Theta]1^3*x^3*(s\[Theta]1*(2*R2^6-3*R2^4*(x^2-11*y^2)+140*y^4*(x^2+y^2)+R2^2*(-45*x^2*y^2-165*y^4))+R2*y*(-56*R2^4+R2^2*(71*x^2+213*y^2-4*z^2)+y^2*(-167*(x^2+y^2)+8*z^2)))+c\[Theta]1^2*x^2*(s\[Theta]1^2*y*(2*R2^6-3*R2^4*(x^2-11*y^2)+210*y^4*(x^2+y^2)-45*R2^2*y^2*(x^2+5*y^2))+R2*s\[Theta]1*(-8*R2^6-3*y^4*(167*(x^2+y^2)-8*z^2)+R2^4*(13*x^2-101*y^2-2*z^2)+6*R2^2*y^2*(24*x^2+95*y^2-z^2))+R2^2*y*(104*R2^4+15*y^2*(21*(x^2+y^2)-2*z^2)+R2^2*(-133*x^2-399*y^2+14*z^2)))+c\[Theta]1*x*(-3*R2*s\[Theta]1^2*y^3*(20*R2^4+R2^2*(-25*x^2-167*y^2)+y^2*(167*(x^2+y^2)-8*z^2))+s\[Theta]1^3*(2*R2^6*x^2+3*R2^4*x^2*y^2+140*y^6*(x^2+y^2)+15*R2^2*y^4*(-8*y^2+z^2))+R2^2*s\[Theta]1*(16*R2^6+30*y^4*(21*(x^2+y^2)-2*z^2)+R2^4*(-23*x^2+83*y^2+4*z^2)+R2^2*y^2*(-137*x^2-669*y^2+16*z^2))+R2^3*y*(-94*R2^4+R2^2*(119*x^2+363*y^2-16*z^2)+y^2*(-289*(x^2+y^2)+36*z^2)))),
   -(s\[Theta]1*z*(-3*c\[Theta]1^4*x^4*(3*R2^4+35*y^2*z^2-5*R2^2*(3*y^2+z^2))-3*R2^4*(5*R2^4+R2^2*(3*x^2-34*y^2-13*z^2)+y^2*(-11*(x^2+y^2)+117*z^2))+c\[Theta]1*x*(6*s\[Theta]1^3*y*(2*R2^6+3*R2^4*y^2+30*R2^2*y^4+(-2*R2^4-5*R2^2*y^2-70*y^4)*z^2)+R2^3*(52*R2^4-3*y^2*(29*(x^2+y^2)-296*z^2)+R2^2*(23*x^2-295*y^2-112*z^2))+2*R2^2*s\[Theta]1*y*(13*R2^4+15*y^2*(5*(x^2+y^2)-64*z^2)+R2^2*(-19*x^2+347*y^2-13*z^2))-3*R2*s\[Theta]1^2*(10*R2^6+R2^2*y^2*(-5*x^2+199*y^2-30*z^2)+21*y^4*(x^2+y^2-24*z^2)+R2^4*(20*y^2-10*z^2)))+c\[Theta]1^3*x^3*(R2*(40*R2^4+R2^2*(5*x^2-199*y^2-70*z^2)-21*y^2*(x^2+y^2-24*z^2))+6*s\[Theta]1*y*(-3*R2^4-70*y^2*z^2+5*R2^2*(6*y^2+z^2)))+c\[Theta]1^2*x^2*(6*s\[Theta]1^2*(R2^6+45*R2^2*y^4-R2^4*z^2-105*y^4*z^2)+3*R2*s\[Theta]1*y*(10*R2^4-21*y^2*(x^2+y^2-24*z^2)+R2^2*(5*x^2-199*y^2-20*z^2))+R2^2*(-68*R2^4+15*y^2*(5*(x^2+y^2)-64*z^2)+R2^2*(-19*x^2+347*y^2+128*z^2)))+s\[Theta]1*(R2^3*y*(-38*R2^4-3*y^2*(29*(x^2+y^2)-296*z^2)+R2^2*(23*x^2-295*y^2+98*z^2))+s\[Theta]1*(R2^2*(24*R2^6+R2^2*y^2*(-19*x^2+347*y^2-154*z^2)+15*y^4*(5*(x^2+y^2)-64*z^2)+R2^4*(94*y^2-48*z^2))+s\[Theta]1*y*(3*s\[Theta]1*y*(2*R2^6+3*R2^4*y^2+15*R2^2*y^4+(-2*R2^4-5*R2^2*y^2-35*y^4)*z^2)+R2*(-30*R2^6-21*y^4*(x^2+y^2-24*z^2)+R2^4*(-50*y^2+30*z^2)+R2^2*y^2*(5*x^2-199*y^2+80*z^2))))))),
   c\[Theta]1*z*(-3*c\[Theta]1^4*x^4*(3*R2^4+35*y^2*z^2-5*R2^2*(3*y^2+z^2))-3*R2^4*(5*R2^4+R2^2*(3*x^2-34*y^2-13*z^2)+y^2*(-11*(x^2+y^2)+117*z^2))+c\[Theta]1*x*(6*s\[Theta]1^3*y*(2*R2^6+3*R2^4*y^2+30*R2^2*y^4+(-2*R2^4-5*R2^2*y^2-70*y^4)*z^2)+R2^3*(52*R2^4-3*y^2*(29*(x^2+y^2)-296*z^2)+R2^2*(23*x^2-295*y^2-112*z^2))+2*R2^2*s\[Theta]1*y*(13*R2^4+15*y^2*(5*(x^2+y^2)-64*z^2)+R2^2*(-19*x^2+347*y^2-13*z^2))-3*R2*s\[Theta]1^2*(10*R2^6+R2^2*y^2*(-5*x^2+199*y^2-30*z^2)+21*y^4*(x^2+y^2-24*z^2)+R2^4*(20*y^2-10*z^2)))+c\[Theta]1^3*x^3*(R2*(40*R2^4+R2^2*(5*x^2-199*y^2-70*z^2)-21*y^2*(x^2+y^2-24*z^2))+6*s\[Theta]1*y*(-3*R2^4-70*y^2*z^2+5*R2^2*(6*y^2+z^2)))+c\[Theta]1^2*x^2*(6*s\[Theta]1^2*(R2^6+45*R2^2*y^4-R2^4*z^2-105*y^4*z^2)+3*R2*s\[Theta]1*y*(10*R2^4-21*y^2*(x^2+y^2-24*z^2)+R2^2*(5*x^2-199*y^2-20*z^2))+R2^2*(-68*R2^4+15*y^2*(5*(x^2+y^2)-64*z^2)+R2^2*(-19*x^2+347*y^2+128*z^2)))+s\[Theta]1*(R2^3*y*(-38*R2^4-3*y^2*(29*(x^2+y^2)-296*z^2)+R2^2*(23*x^2-295*y^2+98*z^2))+s\[Theta]1*(R2^2*(24*R2^6+R2^2*y^2*(-19*x^2+347*y^2-154*z^2)+15*y^4*(5*(x^2+y^2)-64*z^2)+R2^4*(94*y^2-48*z^2))+s\[Theta]1*y*(3*s\[Theta]1*y*(2*R2^6+3*R2^4*y^2+15*R2^2*y^4+(-2*R2^4-5*R2^2*y^2-35*y^4)*z^2)+R2*(-30*R2^6-21*y^4*(x^2+y^2-24*z^2)+R2^4*(-50*y^2+30*z^2)+R2^2*y^2*(5*x^2-199*y^2+80*z^2)))))),
   3*c\[Theta]1*(88*R2^8*y-96*R2^6*y*(x^2+y^2)-128*R2^4*y*z^4+c\[Theta]1^4*x^4*y*(27*R2^4-30*R2^2*(x^2+y^2)-35*z^4)+c\[Theta]1^3*x^3*(-135*R2^5*y+150*R2^3*y*(x^2+y^2)+175*R2*y*z^4+s\[Theta]1*(5*R2^6-6*R2^4*(x^2-17*y^2)-140*y^2*z^4-5*R2^2*(24*y^2*(x^2+y^2)+z^4)))+s\[Theta]1*(-27*R2^9+R2^7*(30*x^2-215*y^2)+325*R2^3*y^2*z^4+R2^5*(270*y^2*(x^2+y^2)+35*z^4)+s\[Theta]1*y*(47*R2^8+R2^6*(-54*x^2+211*y^2)-345*R2^2*y^2*z^4+R2^4*(-294*y^2*(x^2+y^2)-47*z^4)-s\[Theta]1*y*(-5*R2+s\[Theta]1*y)*(-5*R2^6+R2^4*(6*x^2-21*y^2)+35*y^2*z^4+5*R2^2*(6*y^2*(x^2+y^2)+z^4))))+c\[Theta]1^2*x^2*(R2^2*y*(265*R2^4-294*R2^2*(x^2+y^2)-345*z^4)+s\[Theta]1*(-25*R2^7+R2^5*(30*x^2-375*y^2)+525*R2*y^2*z^4+25*R2^3*(18*y^2*(x^2+y^2)+z^4)-3*s\[Theta]1*y*(-5*R2^6+6*R2^4*(x^2-8*y^2)+70*y^2*z^4+5*R2^2*(12*y^2*(x^2+y^2)+z^4))))+c\[Theta]1*x*(-245*R2^7*y+270*R2^5*y*(x^2+y^2)+325*R2^3*y*z^4+s\[Theta]1*(47*R2^8+R2^6*(-54*x^2+476*y^2)-690*R2^2*y^2*z^4+R2^4*(-588*y^2*(x^2+y^2)-47*z^4)+s\[Theta]1*y*(-50*R2^7+R2^5*(60*x^2-345*y^2)+525*R2*y^2*z^4+50*R2^3*(9*y^2*(x^2+y^2)+z^4)+s\[Theta]1*y*(15*R2^6-18*R2^4*(x^2-5*y^2)-140*y^2*z^4-15*R2^2*(8*y^2*(x^2+y^2)+z^4))))))}/(2*Pi*R2^9*(R2 - c\[Theta]1*x - s\[Theta]1*y)^5)]
edgepotentialC5pp=Compile[{R1,R2,L2,X1,Y1,X2,Y2,z},
  {(Y1-Y2)*z*(L2^4*(12*R1^4*R2^9+105*R2^9*Y1^2*(Y1^2+z^2)-15*R1^2*R2^9*(7*Y1^2+z^2)+R1^9*(12*R2^4+105*Y2^2*(Y2^2+z^2)-15*R2^2*(7*Y2^2+z^2)))+L2^3*(-4*R1^8*R2^5*(19*R2^2-14*X2^2-29*Y2^2-14*z^2)-420*R2^11*Y1^2*(Y1^2+z^2)+2*R1^3*R2^10*(8*X1^2+581*Y1^2+83*z^2)-4*R1^5*R2^6*(34*R2^4+15*X2^2*Y1^2+Y2*(20*X1^2*Y1+20*Y1^3+9*X1^2*Y2+24*Y1^2*Y2)+(15*Y1^2+20*Y1*Y2+9*Y2^2)*z^2+R2^2*(-14*X1^2-29*Y1^2-14*z^2))-6*R1*R2^10*Y1^2*(16*X1^2+191*(Y1^2+z^2))+R1^11*(-48*R2^4-420*Y2^2*(Y2^2+z^2)+60*R2^2*(7*Y2^2+z^2))-2*R1^7*R2^4*(38*R2^4+R2^2*(-5*X1^2-10*X2^2-5*Y1^2-120*Y1*Y2-28*Y2^2-15*z^2)+5*Y2*(16*X2^2*Y1+Y2*(3*(X1^2+Y1^2)+16*Y1*Y2)+(16*Y1+3*Y2)*z^2))-2*R1^4*R2^7*(24*R2^4+R2^2*(-31*X1^2+6*X1*X2-526*Y1^2-24*Y1*Y2-76*z^2)+5*Y1*(3*X2^2*Y1+Y2*(16*(X1^2+Y1^2)+3*Y1*Y2)+(3*Y1+16*Y2)*z^2))-2*R1^6*R2^5*(70*R2^4+R2^2*(-10*X1^2-5*X2^2-28*Y1^2-120*Y1*Y2-5*Y2^2-15*z^2)+2*(X2^2*Y1*(9*Y1+20*Y2)+Y2^2*(15*X1^2+24*Y1^2+20*Y1*Y2)+(9*Y1^2+20*Y1*Y2+15*Y2^2)*z^2))+30*R1^2*R2^9*(2*R2^2*(7*Y1^2+z^2)+Y1*(-13*X1^2*Y1+2*X1*X2*Y1-2*(16*Y1+Y2)*(Y1^2+z^2)))-2*R1^10*R2*(68*R2^4+R2^2*(-8*X2^2-581*Y2^2-83*z^2)+3*Y2^2*(16*X2^2+191*(Y2^2+z^2)))-2*R1^9*R2^2*(70*R2^4+R2^2*(6*X1*X2-31*X2^2-24*Y1*Y2-526*Y2^2-76*z^2)+15*Y2*(-2*X1*X2*Y2+13*X2^2*Y2+2*(Y1+16*Y2)*(Y2^2+z^2))))+(R1+R2)^5*(105*R2^12*Y1^2*(Y1^2+z^2)+R1^4*R2^8*(12*R2^4-12*Y1*(16*X1^2*(Y1+Y2)+8*X1*X2*(6*Y1+Y2)+Y1*(X2^2-16*Y1^2-32*Y1*Y2-3*Y2^2))+12*(17*Y1^2+32*Y1*Y2+2*Y2^2)*z^2+R2^2*(34*X1^2+12*X1*X2-803*Y1^2-48*Y1*Y2-119*z^2))+2*R1^8*R2^4*(34*R2^4-48*X2*(X1+2*X2)*Y1*Y2-6*(X1^2+48*X1*X2+16*X2^2-3*Y1^2)*Y2^2+192*Y1*Y2^3+96*Y2^4+6*(2*Y1^2+32*Y1*Y2+17*Y2^2)*z^2+R2^2*(2*X1^2+64*X1*X2+23*X2^2-10*Y1^2-152*Y1*Y2-130*Y2^2-31*z^2))+2*R1^6*R2^6*(45*R2^4-3*X1^2*Y2*(8*Y1+17*Y2)-48*X1*X2*(Y1^2+9*Y1*Y2+Y2^2)+3*Y1*(-17*X2^2*Y1-8*X2^2*Y2+8*Y1^2*Y2+38*Y1*Y2^2+8*Y2^3)+3*(19*Y1^2+16*Y1*Y2+19*Y2^2)*z^2+R2^2*(23*X1^2+64*X1*X2+2*X2^2-130*Y1^2-152*Y1*Y2-10*Y2^2-31*z^2))+3*R1*R2^11*Y1^2*(-16*X1^2+159*(Y1^2+z^2))+R1^12*(12*R2^4+105*Y2^2*(Y2^2+z^2)-15*R2^2*(7*Y2^2+z^2))+2*R1^7*R2^5*(42*R2^4+R2^2*(10*(X1^2+8*X1*X2+X2^2)-35*Y1^2-160*Y1*Y2-35*Y2^2-20*z^2)+15*(-16*X1*X2*Y2*(Y1+Y2)-X2^2*Y1*(Y1+8*Y2)+Y2^2*(-2*X1^2+5*Y1^2+8*Y1*Y2)+(3*Y1^2+8*Y1*Y2+2*Y2^2)*z^2))+R1^5*R2^7*(52*R2^4+R2^2*(56*X1^2+60*X1*X2-649*Y1^2-192*Y1*Y2-109*z^2)+30*(-16*X1*X2*Y1*(Y1+Y2)-X1^2*Y2*(8*Y1+Y2)+Y1^2*(-2*X2^2+8*Y1*Y2+5*Y2^2)+(2*Y1^2+8*Y1*Y2+3*Y2^2)*z^2))-15*R1^2*R2^10*(R2^2*(7*Y1^2+z^2)+Y1*(14*X1^2*Y1+4*X1*X2*Y1-(55*Y1+4*Y2)*(Y1^2+z^2)))+R1^3*R2^9*(R2^2*(8*X1^2-469*Y1^2-67*z^2)+3*Y1*(-100*X1*X2*Y1+X1^2*(-110*Y1-16*Y2)+(215*Y1+84*Y2)*(Y1^2+z^2)))+R1^11*R2*(52*R2^4+R2^2*(8*X2^2-469*Y2^2-67*z^2)+3*Y2^2*(-16*X2^2+159*(Y2^2+z^2)))+R1^10*R2^2*(90*R2^4+R2^2*(12*X1*X2+34*X2^2-48*Y1*Y2-803*Y2^2-119*z^2)+15*Y2*(-4*X1*X2*Y2-14*X2^2*Y2+(4*Y1+55*Y2)*(Y2^2+z^2)))+R1^9*R2^3*(84*R2^4+R2^2*(60*X1*X2+56*X2^2-192*Y1*Y2-649*Y2^2-109*z^2)+3*Y2*(X2^2*(-16*Y1-110*Y2)-100*X1*X2*Y2+(84*Y1+215*Y2)*(Y2^2+z^2))))+2*L2^2*(R1+R2)*(1260*R1*R2^11*Y1^2*(Y1^2+z^2)+315*R2^12*Y1^2*(Y1^2+z^2)+R1^4*R2^8*(36*R2^4+3*Y1*(-16*X1*X2*Y2+X1^2*(80*Y1+120*Y2)+Y1*(5*X2^2+80*Y1^2+120*Y1*Y2+13*Y2^2))+3*(89*Y1^2+120*Y1*Y2+4*Y2^2)*z^2+R2^2*(-25*X1^2+18*X1*X2-1882*Y1^2-72*Y1*Y2-274*z^2))+R1^5*R2^7*(144*R2^4+105*X2^2*Y1^2+48*X1*X2*Y1*Y2+3*Y2*(20*X1^2*(4*Y1+Y2)+Y1^2*(80*Y1+47*Y2))+3*(31*Y1^2+80*Y1*Y2+16*Y2^2)*z^2+R2^2*(-75*X1^2+42*X1*X2-1293*Y1^2-248*Y1*Y2-201*z^2))+R1^8*R2^4*(144*R2^4+3*Y2*(-16*X1*X2*Y1+5*X1^2*Y2+X2^2*(120*Y1+80*Y2)+Y2*(13*Y1^2+120*Y1*Y2+80*Y2^2))+3*(4*Y1^2+120*Y1*Y2+89*Y2^2)*z^2+R2^2*(-5*X1^2+16*X1*X2-80*X2^2-17*Y1^2-424*Y1*Y2-422*Y2^2-93*z^2))+R1^6*R2^6*(228*R2^4-48*X1*X2*Y1*Y2+10*X2^2*Y1*(9*Y1+8*Y2)+2*Y2*(40*X1^2*Y1+40*Y1^3+45*X1^2*Y2+102*Y1^2*Y2+40*Y1*Y2^2)+2*(51*Y1^2+80*Y1*Y2+51*Y2^2)*z^2+R2^2*(-80*X1^2+16*X1*X2-5*X2^2-422*Y1^2-424*Y1*Y2-17*Y2^2-93*z^2))+R1^7*R2^5*(192*R2^4+48*X1*X2*Y1*Y2+60*X2^2*Y1*(Y1+4*Y2)+3*Y2^2*(35*X1^2+47*Y1^2+80*Y1*Y2)+3*(16*Y1^2+80*Y1*Y2+31*Y2^2)*z^2+R2^2*(-35*X1^2-16*X1*X2-35*X2^2-83*Y1^2-496*Y1*Y2-83*Y2^2-62*z^2))+R1^12*(36*R2^4+315*Y2^2*(Y2^2+z^2)-45*R2^2*(7*Y2^2+z^2))+R1^11*(144*R2^5+1260*R2*Y2^2*(Y2^2+z^2)-180*R2^3*(7*Y2^2+z^2))+15*R1^2*R2^10*(-3*R2^2*(7*Y1^2+z^2)+Y1*(11*X1^2*Y1-6*X1*X2*Y1+2*(61*Y1+3*Y2)*(Y1^2+z^2)))+5*R1^3*R2^9*(-36*R2^2*(7*Y1^2+z^2)+Y1*(-42*X1*X2*Y1+X1^2*(93*Y1+16*Y2)+(225*Y1+58*Y2)*(Y1^2+z^2)))+R1^10*R2^2*(228*R2^4+R2^2*(18*X1*X2-25*X2^2-72*Y1*Y2-1882*Y2^2-274*z^2)+15*Y2*(-6*X1*X2*Y2+11*X2^2*Y2+2*(3*Y1+61*Y2)*(Y2^2+z^2)))+R1^9*R2^3*(192*R2^4+R2^2*(42*X1*X2-75*X2^2-248*Y1*Y2-1293*Y2^2-201*z^2)+5*Y2*(-42*X1*X2*Y2+X2^2*(16*Y1+93*Y2)+(58*Y1+225*Y2)*(Y2^2+z^2))))-2*L2*(R1+R2)^3*(210*R2^12*Y1^2*(Y1^2+z^2)+R1^4*R2^8*(24*R2^4+3*Y1*(-32*X1*X2*(3*Y1+Y2)+X1^2*(80*Y1+48*Y2)+Y1*(-X2^2+80*Y1^2+144*Y1*Y2+15*Y2^2))+3*(87*Y1^2+144*Y1*Y2+8*Y2^2)*z^2+R2^2*(19*X1^2+18*X1*X2-1421*Y1^2-72*Y1*Y2-209*z^2))+R1^8*R2^4*(116*R2^4-48*(2*X1-3*X2)*X2*Y1*Y2-3*(X1^2+96*X1*X2-80*X2^2-15*Y1^2)*Y2^2+432*Y1*Y2^3+240*Y2^4+3*(8*Y1^2+144*Y1*Y2+87*Y2^2)*z^2+R2^2*(X1^2+80*X1*X2-26*X2^2-23*Y1^2-424*Y1*Y2-386*Y2^2-89*z^2))+R1^7*R2^5*(148*R2^4+48*X1*X2*Y2*(-4*Y1+3*Y2)+6*X2^2*Y1*(5*Y1+68*Y2)+3*Y2^2*(13*X1^2+55*Y1^2+88*Y1*Y2)+3*(26*Y1^2+88*Y1*Y2+29*Y2^2)*z^2+R2^2*(-13*X1^2+64*X1*X2-13*X2^2-91*Y1^2-464*Y1*Y2-91*Y2^2-58*z^2))+3*R1*R2^11*Y1^2*(-16*X1^2+299*(Y1^2+z^2))+R1^12*(24*R2^4+210*Y2^2*(Y2^2+z^2)-30*R2^2*(7*Y2^2+z^2))+R1^5*R2^7*(100*R2^4+48*X1*X2*Y1*(3*Y1-4*Y2)+6*X1^2*Y2*(68*Y1+5*Y2)+3*Y1^2*(13*X2^2+88*Y1*Y2+55*Y2^2)+3*(29*Y1^2+88*Y1*Y2+26*Y2^2)*z^2-R2^2*(X1^2-66*X1*X2+1060*Y1^2+264*Y1*Y2+172*z^2))+R1^6*R2^6*(166*R2^4+R2^2*(-26*X1^2+80*X1*X2+X2^2-386*Y1^2-424*Y1*Y2-23*Y2^2-89*z^2)+24*(X2^2*Y1*(8*Y1+Y2)+Y1*Y2*(3*Y1+Y2)*(Y1+3*Y2)+X1^2*Y2*(Y1+8*Y2)-2*X1*X2*(Y1^2-6*Y1*Y2+Y2^2)+(5*Y1^2+6*Y1*Y2+5*Y2^2)*z^2))+3*R1^2*R2^10*(-10*R2^2*(7*Y1^2+z^2)+Y1*(-37*X1^2*Y1-30*X1*X2*Y1+(473*Y1+30*Y2)*(Y1^2+z^2)))+R1^3*R2^9*(R2^2*(8*X1^2-889*Y1^2-127*z^2)+3*Y1*(19*X1^2*Y1-110*X1*X2*Y1+2*(162*Y1+55*Y2)*(Y1^2+z^2)))+R1^11*R2*(100*R2^4+R2^2*(8*X2^2-889*Y2^2-127*z^2)+3*Y2^2*(-16*X2^2+299*(Y2^2+z^2)))+R1^9*R2^3*(148*R2^4+R2^2*(66*X1*X2-X2^2-264*Y1*Y2-1060*Y2^2-172*z^2)+3*Y2*(-110*X1*X2*Y2+19*X2^2*Y2+2*(55*Y1+162*Y2)*(Y2^2+z^2)))+R1^10*R2^2*(166*R2^4+R2^2*(18*X1*X2+19*X2^2-72*Y1*Y2-1421*Y2^2-209*z^2)+3*Y2*(-30*X1*X2*Y2-37*X2^2*Y2+(30*Y1+473*Y2)*(Y2^2+z^2))))),
   (Y1-Y2)*(L2^4*(12*R1^4*R2^9*Y1-15*R1^2*R2^9*Y1^3-105*R2^9*X1^2*Y1*z^2-3*R1^9*Y2*(-4*R2^4-35*z^2*(Y2^2+z^2)+5*R2^2*(Y2^2+7*z^2)))+L2^3*(-420*R2^11*Y1*z^2*(Y1^2+z^2)+2*R1^3*R2^10*Y1*(8*X1^2+83*Y1^2+581*z^2)-4*R1^8*R2^5*(R2^2*(4*Y1+15*Y2)-2*(2*Y1+5*Y2)*(X2^2+Y2^2)+(-4*Y1-25*Y2)*z^2)+R1^11*(-48*R2^4*Y2+60*R2^2*Y2^3+420*X2^2*Y2*z^2)-2*R1^10*R2*Y2*(R2^2*(68*R2^2-8*X2^2-83*Y2^2)+(-581*R2^2+48*X2^2+573*Y2^2)*z^2+573*z^4)+4*R1^5*R2^6*(-2*R2^2*(17*R2^2*Y1-(X1^2+Y1^2)*(5*Y1+2*Y2))+(X1^2*(-10*Y1-19*Y2)+R2^2*(25*Y1+4*Y2)+Y1*(-15*X2^2-10*Y1^2-19*Y1*Y2-15*Y2^2))*z^2+(-25*Y1-19*Y2)*z^4)+30*R1^2*R2^9*(2*R2^2*Y1^3-Y1*(-14*R2^2+X1*(13*X1-2*X2)+Y1*(33*Y1+Y2))*z^2-(33*Y1+Y2)*z^4)+2*R1^4*R2^7*(R2^2*Y1*(-24*R2^2+31*X1^2-6*X1*X2+73*Y1^2+3*Y1*Y2)+5*(-8*X1^2*(Y1+Y2)+R2^2*(107*Y1+3*Y2)+Y1*(-3*X2^2-8*Y1^2-8*Y1*Y2-3*Y2^2))*z^2-5*(11*Y1+8*Y2)*z^4)+2*R1^7*R2^4*(R2^2*(10*X2^2*Y1+R2^2*(-30*Y1-8*Y2)+5*Y2*(X1^2+Y1^2+2*Y1*Y2))+(-15*(X1^2+Y1^2)*Y2-40*Y1*Y2^2-40*Y2^3-40*X2^2*(Y1+Y2)+R2^2*(70*Y1+83*Y2))*z^2-5*(8*Y1+11*Y2)*z^4)+2*R1^6*R2^5*(R2^2*(10*X1^2*Y2-2*R2^2*(34*Y1+Y2)+5*Y1*(X2^2+2*Y1*Y2+Y2^2))+(X2^2*(-38*Y1-20*Y2)-30*(X1^2+Y1^2)*Y2-38*Y1*Y2^2-20*Y2^3+R2^2*(83*Y1+70*Y2))*z^2-2*(19*Y1+25*Y2)*z^4)-6*R1*R2^10*Y1*z^2*(16*X1^2+191*(Y1^2+z^2))+2*R1^9*R2^2*(-2*R2^4*(Y1+34*Y2)-15*Y2*(X2*(-2*X1+13*X2)+Y2*(Y1+33*Y2))*z^2-15*(Y1+33*Y2)*z^4+R2^2*(-6*X1*X2*Y2+31*X2^2*Y2+3*Y1*Y2^2+73*Y2^3+15*Y1*z^2+535*Y2*z^2)))-2*L2*(R1+R2)^4*(210*R2^11*Y1*z^2*(Y1^2+z^2)+R1^11*(24*R2^4*Y2-30*R2^2*Y2^3-210*X2^2*Y2*z^2)+R1^10*R2*Y2*(R2^2*(76*R2^2+8*X2^2-97*Y2^2)+(-679*R2^2-48*X2^2+687*Y2^2)*z^2+687*z^4)+2*R1^5*R2^6*(2*R2^2*Y1*(19*R2^2-3*X1^2+12*X1*X2-9*Y1^2-6*Y1*Y2)-3*(X1^2*(-2*Y1-27*Y2)+8*X1*X2*(-3*Y1+Y2)+R2^2*(65*Y1+20*Y2)+Y1*(-7*X2^2-6*Y1^2-15*Y1*Y2-11*Y2^2))*z^2+3*(17*Y1+15*Y2)*z^4)+3*R1^2*R2^9*(-10*R2^2*Y1^3+Y1*(-70*R2^2-21*X1^2-30*X1*X2+259*Y1^2+15*Y1*Y2)*z^2+(259*Y1+15*Y2)*z^4)+R1^6*R2^5*(R2^2*(-14*X1^2*Y2+16*X1*X2*(Y1+Y2)+6*R2^2*(14*Y1+Y2)+Y1*(X2^2-22*Y1*Y2-7*Y2^2))+(162*X2^2*Y1+R2^2*(-169*Y1-154*Y2)-48*X1*X2*(Y1-3*Y2)+42*X1^2*Y2+12*X2^2*Y2+66*Y1^2*Y2+90*Y1*Y2^2+36*Y2^3)*z^2+6*(15*Y1+17*Y2)*z^4)+R1^7*R2^4*(R2^2*(X1^2*Y2+16*X1*X2*(Y1+Y2)+R2^2*(42*Y1+16*Y2)+Y1*(-14*X2^2-7*Y1*Y2-22*Y2^2))+(-24*(2*X1-3*X2)*X2*Y1+R2^2*(-154*Y1-169*Y2)-3*(X1^2+32*X1*X2-64*X2^2-7*Y1^2)*Y2+120*Y1*Y2^2+96*Y2^3)*z^2+3*(40*Y1+39*Y2)*z^4)+R1^4*R2^7*(R2^2*Y1*(24*R2^2+11*X1^2+18*X1*X2-103*Y1^2-9*Y1*Y2)+(R2^2*(-769*Y1-45*Y2)-48*X1*X2*(2*Y1+Y2)+X1^2*(192*Y1+72*Y2)+3*Y1*(-X2^2+32*Y1^2+40*Y1*Y2+7*Y2^2))*z^2+3*(39*Y1+40*Y2)*z^4)+R1^3*R2^8*(120*Y1*(X1*(X1-2*X2)+Y1*(3*Y1+Y2))*z^2+120*(3*Y1+Y2)*z^4+R2^2*Y1*(8*X1^2-97*Y1^2-679*z^2))+3*R1*R2^10*Y1*z^2*(-16*X1^2+229*(Y1^2+z^2))+R1^9*R2^2*(6*R2^4*(Y1+14*Y2)+3*Y2*(-30*X1*X2-21*X2^2+15*Y1*Y2+259*Y2^2)*z^2+3*(15*Y1+259*Y2)*z^4+R2^2*(Y2*(18*X1*X2+11*X2^2-9*Y1*Y2-103*Y2^2)+(-45*Y1-769*Y2)*z^2))+2*R1^8*R2^3*(R2^4*(8*Y1+21*Y2)+60*Y2*(-2*X1*X2+X2^2+Y2*(Y1+3*Y2))*z^2+60*(Y1+3*Y2)*z^4+R2^2*(24*X1*X2*Y2-6*Y2*(X2^2+2*Y1*Y2+3*Y2^2)-15*(4*Y1+13*Y2)*z^2)))+(R1+R2)^6*(105*R2^11*Y1*z^2*(Y1^2+z^2)+R1^11*(12*R2^4*Y2-15*R2^2*Y2^3-105*X2^2*Y2*z^2)+4*R1^10*R2*Y2*(R2^2*(10*R2^2+2*X2^2-13*Y2^2)+(-91*R2^2-12*X2^2+93*Y2^2)*z^2+93*z^4)+2*R1^6*R2^5*(R2^2*((23*R2^2+2*X2*(16*X1+X2))*Y1+2*(R2^2+4*X1*(X1+X2)-4*Y1^2)*Y2-2*Y1*Y2^2)+(-3*X2*(32*X1+13*X2)*Y1+R2^2*(-59*Y1-56*Y2)-12*(2*X1^2+14*X1*X2+X2^2-2*Y1^2)*Y2+45*Y1*Y2^2+12*Y2^3)*z^2+9*(5*Y1+4*Y2)*z^4)+2*R1^5*R2^6*(R2^2*(20*R2^2*Y1+24*X1*X2*Y1+3*X1^2*(4*Y1+Y2)-3*Y1^2*(4*Y1+3*Y2))-3*(-4*Y1*(-11*R2^2-X1^2-14*X1*X2-2*X2^2+Y1^2)+(15*R2^2+13*X1^2+32*X1*X2-15*Y1^2)*Y2-8*Y1*Y2^2)*z^2+9*(4*Y1+5*Y2)*z^4)+2*R1^7*R2^4*(R2^2*(8*X2*(X1+X2)*Y1+2*(X1^2+16*X1*X2-Y1^2)*Y2-8*Y1*Y2^2+R2^2*(12*Y1+5*Y2))+(-12*X2*(2*X1+3*X2)*Y1+R2^2*(-56*Y1-59*Y2)-6*(X1^2+32*X1*X2+8*X2^2-Y1^2)*Y2+60*Y1*Y2^2+48*Y2^3)*z^2+6*(10*Y1+9*Y2)*z^4)+R1^4*R2^7*(R2^2*Y1*(12*R2^2+26*X1^2+12*X1*X2-61*Y1^2-6*Y1*Y2)+(X1^2*(-96*Y1-72*Y2)+R2^2*(-457*Y1-30*Y2)-48*X1*X2*(8*Y1+Y2)+12*Y1*(-X2^2+8*Y1^2+10*Y1*Y2+Y2^2))*z^2+12*(9*Y1+10*Y2)*z^4)+3*R1^2*R2^9*(-5*R2^2*Y1^3+Y1*(-35*R2^2-54*X1^2-20*X1*X2+161*Y1^2+10*Y1*Y2)*z^2+(161*Y1+10*Y2)*z^4)+12*R1*R2^10*Y1*z^2*(-4*X1^2+31*(Y1^2+z^2))+R1^9*R2^2*(R2^4*(4*Y1+46*Y2)+3*Y2*(-20*X1*X2-54*X2^2+10*Y1*Y2+161*Y2^2)*z^2+3*(10*Y1+161*Y2)*z^4+R2^2*(Y2*(12*X1*X2+26*X2^2-6*Y1*Y2-61*Y2^2)+(-30*Y1-457*Y2)*z^2))+4*R1^3*R2^8*(R2^2*Y1*(2*X1^2-13*Y1^2-91*z^2)+6*z^2*(-10*X1*X2*Y1-X1^2*(8*Y1+Y2)+4*(3*Y1+Y2)*(Y1^2+z^2)))+2*R1^8*R2^3*(R2^4*(5*Y1+12*Y2)+3*R2^2*(8*X1*X2*Y2-3*Y1*Y2^2-4*Y2^3+X2^2*(Y1+4*Y2)-15*Y1*z^2-44*Y2*z^2)+12*z^2*(-10*X1*X2*Y2-X2^2*(Y1+8*Y2)+4*(Y1+3*Y2)*(Y2^2+z^2))))+2*L2^2*(R1+R2)^2*(945*R1*R2^10*Y1*z^2*(Y1^2+z^2)+315*R2^11*Y1*z^2*(Y1^2+z^2)+R1^11*(36*R2^4*Y2-45*R2^2*Y2^3-315*X2^2*Y2*z^2)+R1^10*(108*R2^5*Y2-135*R2^3*Y2^3-945*R2*X2^2*Y2*z^2)+15*R1^2*R2^9*(-3*R2^2*Y1^3+Y1*(-21*R2^2+11*X1^2-6*X1*X2+62*Y1^2+3*Y1*Y2)*z^2+(62*Y1+3*Y2)*z^4)+2*R1^5*R2^6*(R2^2*(54*R2^2*Y1+12*X1*X2*Y1+Y1^2*(-20*Y1-11*Y2)-5*X1^2*(4*Y1+Y2))+(R2^2*(-211*Y1-55*Y2)+20*X1^2*(Y1+Y2)+X1*(-36*X2*Y1+24*X2*Y2)+Y1*(45*X2^2+20*Y1^2+38*Y1*Y2+33*Y2^2))*z^2+(53*Y1+38*Y2)*z^4)+R1^6*R2^5*(R2^2*(-30*X1^2*Y2+8*X1*X2*(-2*Y1+Y2)+6*R2^2*(19*Y1+Y2)+Y1*(-5*X2^2-22*Y1*Y2-9*Y2^2))+(48*X1*X2*Y1+40*X2^2*Y1+R2^2*(-177*Y1-154*Y2)+90*X1^2*Y2-72*X1*X2*Y2+40*X2^2*Y2+66*Y1^2*Y2+76*Y1*Y2^2+40*Y2^3)*z^2+2*(38*Y1+53*Y2)*z^4)+R1^4*R2^7*(R2^2*Y1*(36*R2^2-25*X1^2+18*X1*X2-130*Y1^2-9*Y1*Y2)+(Y1*(-964*R2^2+80*X1^2+96*X1*X2+15*X2^2+80*Y1^2)+(-45*R2^2+140*X1^2-24*X1*X2+92*Y1^2)*Y2+27*Y1*Y2^2)*z^2+(107*Y1+92*Y2)*z^4)+R1^7*R2^4*(R2^2*(8*X1*X2*(Y1-2*Y2)-5*X1^2*Y2+18*R2^2*(3*Y1+Y2)+Y1*(-30*X2^2-9*Y1*Y2-22*Y2^2))+(-4*(6*X1-35*X2)*X2*Y1+R2^2*(-154*Y1-177*Y2)+(15*X1^2+96*X1*X2+80*X2^2+27*Y1^2)*Y2+92*Y1*Y2^2+80*Y2^3)*z^2+(92*Y1+107*Y2)*z^4)+R1^9*R2^2*(6*R2^4*(Y1+19*Y2)+15*Y2*(-6*X1*X2+11*X2^2+3*Y1*Y2+62*Y2^2)*z^2+15*(3*Y1+62*Y2)*z^4+R2^2*(Y2*(18*X1*X2-25*X2^2-9*Y1*Y2-130*Y2^2)+(-45*Y1-964*Y2)*z^2))+5*R1^3*R2^8*(-27*R2^2*(Y1^3+7*Y1*z^2)+4*z^2*(-6*X1*X2*Y1+X1^2*(17*Y1+2*Y2)+(17*Y1+5*Y2)*(Y1^2+z^2)))+2*R1^8*R2^3*(9*R2^4*(Y1+3*Y2)+R2^2*(12*X1*X2*Y2-11*Y1*Y2^2-20*Y2^3-5*X2^2*(Y1+4*Y2)-55*Y1*z^2-211*Y2*z^2)+10*z^2*(-6*X1*X2*Y2+X2^2*(2*Y1+17*Y2)+(5*Y1+17*Y2)*(Y2^2+z^2))))),
   (Y1-Y2)*z*(L2^4*(36*R1^4*R2^9+105*R2^9*z^2*(Y1^2+z^2)-45*R1^2*R2^9*(Y1^2+3*z^2)+R1^9*(36*R2^4+105*z^2*(Y2^2+z^2)-45*R2^2*(Y2^2+3*z^2)))-2*L2^3*(R1+R2)*(210*R2^10*z^2*(Y1^2+z^2)+R1^8*(78*R2^6-30*R2^2*X1*X2*z^2+R2^4*(18*X1*X2-69*(X2^2+Y2^2)-78*z^2))+R1^5*(132*R2^9+30*R2^5*X1*X2*z^2+R2^7*(-15*X1^2-18*X1*X2-15*Y1^2-58*z^2))+R1^7*(36*R2^7+30*R2^3*X1*X2*z^2+R2^5*(-18*X1*X2-15*(X2^2+Y2^2)-21*z^2))+3*R1*R2^9*z^2*(16*X1^2+121*(Y1^2+z^2))+R1^10*(72*R2^4+210*z^2*(Y2^2+z^2)-90*R2^2*(Y2^2+3*z^2))+R1^4*R2^6*(72*R2^4+R2^2*(-69*X1^2+18*X1*X2-69*Y1^2-225*z^2)+z^2*(43*X1^2-30*X1*X2+15*X2^2+43*Y1^2+15*Y2^2+58*z^2))+R1^6*R2^4*(78*R2^4+R2^2*(-15*X1^2+18*X1*X2-15*(X2^2+Y1^2+Y2^2)-110*z^2)+z^2*(15*X1^2-30*X1*X2+43*X2^2+15*Y1^2+43*Y2^2+58*z^2))-3*R1^2*R2^8*(30*R2^2*(Y1^2+3*z^2)+z^2*(-49*X1^2+10*X1*X2-49*(Y1^2+z^2)))+R1^3*R2^7*(R2^2*(-24*X1^2-159*Y1^2-477*z^2)+z^2*(37*X1^2+30*X1*X2+37*(Y1^2+z^2)))+3*R1^9*R2*(44*R2^4+R2^2*(-8*X2^2-53*Y2^2-159*z^2)+z^2*(16*X2^2+121*(Y2^2+z^2))))-6*L2*(R1+R2)^5*(70*R2^10*z^2*(Y1^2+z^2)+R1^6*R2^4*(R2^2*(38*R2^2+(X1+X2)^2-7*(Y1^2+Y2^2))-(62*R2^2+X1^2-2*X1*X2-43*X2^2-7*Y1^2-27*Y2^2)*z^2+34*z^4)+R1^4*R2^6*(3*R2^2*(8*R2^2+X1^2+6*X1*X2-15*Y1^2)+(-146*R2^2+43*X1^2+2*X1*X2+27*Y1^2+8*Y2^2)*z^2+35*z^4)+R1^5*(52*R2^9+30*R2^5*X1*X2*z^2+R2^7*(-15*(X1^2-2*X1*X2+Y1^2)-50*z^2))+R1^7*(20*R2^7-50*R2^3*X1*X2*z^2+R2^5*(30*X1*X2-15*(X2^2+Y2^2)-5*z^2))+R1*R2^9*z^2*(-16*X1^2+159*(Y1^2+z^2))+R1^10*(24*R2^4+70*z^2*(Y2^2+z^2)-30*R2^2*(Y2^2+3*z^2))-5*R1^2*R2^8*(6*R2^2*(Y1^2+3*z^2)+z^2*(X1^2+6*X1*X2-23*(Y1^2+z^2)))+R1^3*R2^7*(R2^2*(8*X1^2-67*Y1^2-201*z^2)+5*z^2*(9*X1^2-10*X1*X2+9*(Y1^2+z^2)))+R1^8*R2^2*(38*R2^4+R2^2*(3*X2*(6*X1+X2)-45*Y2^2-145*z^2)-5*z^2*(6*X1*X2+X2^2-23*(Y2^2+z^2)))+R1^9*R2*(52*R2^4+R2^2*(8*X2^2-67*Y2^2-201*z^2)+z^2*(-16*X2^2+159*(Y2^2+z^2))))+2*L2^2*(R1+R2)^3*(630*R1*R2^9*z^2*(Y1^2+z^2)+315*R2^10*z^2*(Y1^2+z^2)+R1^10*(108*R2^4+315*z^2*(Y2^2+z^2)-135*R2^2*(Y2^2+3*z^2))+R1^9*(216*R2^5+630*R2*z^2*(Y2^2+z^2)-270*R2^3*(Y2^2+3*z^2))+R1^4*R2^6*(108*R2^4+R2^2*(-75*X1^2+54*X1*X2-147*Y1^2-477*z^2)+z^2*(5*X1^2+102*X1*X2+15*X2^2+77*Y1^2+27*Y2^2+104*z^2))+R1^6*R2^4*(144*R2^4+R2^2*(-15*X1^2-42*X1*X2-15*X2^2-27*(Y1^2+Y2^2)-214*z^2)+z^2*(15*X1^2+102*X1*X2+5*X2^2+27*Y1^2+77*Y2^2+104*z^2))-15*R1^2*R2^8*(9*R2^2*(Y1^2+3*z^2)+z^2*(-11*X1^2+6*X1*X2-23*(Y1^2+z^2)))-5*R1^3*R2^7*(54*R2^2*(Y1^2+3*z^2)+z^2*(-43*X1^2+6*X1*X2-19*(Y1^2+z^2)))+R1^7*R2^3*(72*R2^4+R2^2*(18*X1*X2-75*X2^2-39*Y2^2-179*z^2)+5*z^2*(-6*X1*X2+43*X2^2+19*(Y2^2+z^2)))+3*R1^8*R2^2*(48*R2^4+R2^2*(18*X1*X2-25*X2^2-49*Y2^2-159*z^2)+5*z^2*(-6*X1*X2+11*X2^2+23*(Y2^2+z^2)))+R1^5*R2^5*(216*R2^4+R2^2*(-75*X1^2+18*X1*X2-39*Y1^2-179*z^2)+3*z^2*(25*X1^2-42*X1*X2+25*X2^2+13*(Y1^2+Y2^2+2*z^2))))+3*(R1+R2)^7*(35*R2^10*z^2*(Y1^2+z^2)+2*R1^7*R2^3*(6*R2^2*X2*(3*X1+2*X2)+(-19*R2^2-30*X1*X2-17*X2^2+23*Y2^2)*z^2+23*z^4)+R1^2*R2^8*(-15*R2^2*Y1^2+(-45*R2^2-38*X1^2-20*X1*X2+82*Y1^2)*z^2+82*z^4)+R1*R2^9*z^2*(-16*X1^2+89*(Y1^2+z^2))+R1^10*(12*R2^4+35*z^2*(Y2^2+z^2)-15*R2^2*(Y2^2+3*z^2))+2*R1^4*R2^6*(6*R2^4+R2^2*(9*X1^2+6*X1*X2-15*Y1^2-48*z^2)+z^2*(-11*X1^2-42*X1*X2-2*X2^2+13*Y1^2+2*Y2^2+15*z^2))+2*R1^6*R2^4*(11*R2^4+2*R2^2*(X1^2+11*X1*X2+X2^2-Y1^2-Y2^2-10*z^2)+z^2*(-2*X1^2-42*X1*X2-11*X2^2+2*Y1^2+13*Y2^2+15*z^2))+R1^3*R2^7*(R2^2*(8*X1^2-37*Y1^2-111*z^2)+2*z^2*(-17*X1^2-30*X1*X2+23*(Y1^2+z^2)))+2*R1^8*R2^2*(11*R2^4+R2^2*(6*X1*X2+9*X2^2-15*Y2^2-48*z^2)+z^2*(-10*X1*X2-19*X2^2+41*(Y2^2+z^2)))+R1^9*R2*(28*R2^4+R2^2*(8*X2^2-37*Y2^2-111*z^2)+z^2*(-16*X2^2+89*(Y2^2+z^2)))+2*R1^5*R2^5*(14*R2^4+R2^2*(6*X1*(X1+3*X2)-6*Y1^2-25*z^2)+2*z^2*(-3*X1^2-23*X1*X2+3*(-X2^2+Y1^2+Y2^2+2*z^2))))),
   3*(Y1-Y2)*(L2^4*(15*R1^2*R2^9*X1*Y1-35*R2^9*X1*Y1^3+R1^9*(15*R2^2*X2*Y2-35*X2*Y2^3))+L2^3*(-150*R1^3*R2^10*X1*Y1+350*R1*R2^10*X1*Y1^3+140*R2^11*X1*Y1^3-6*R1^4*R2^9*(15*X1*Y1+X2*Y1+X1*Y2)+R1^11*(-60*R2^2*X2*Y2+140*X2*Y2^3)+R1^10*(-150*R2^3*X2*Y2+350*R2*X2*Y2^3)+10*R1^2*R2^9*Y1*(-6*R2^2*X1+Y1*(19*X1*Y1+X2*Y1+3*X1*Y2))-2*R1^9*R2^2*(3*R2^2*(X2*Y1+X1*Y2+15*X2*Y2)-5*Y2^2*(3*X2*Y1+X1*Y2+19*X2*Y2)))-2*L2*(R1+R2)^3*(-315*R1*R2^11*X1*Y1^3-70*R2^12*X1*Y1^3+R1^12*(30*R2^2*X2*Y2-70*X2*Y2^3)+R1^11*(135*R2^3*X2*Y2-315*R2*X2*Y2^3)+5*R1^3*R2^9*Y1*(27*R2^2*X1+Y1*(-61*X1*Y1-11*X2*Y1-33*X1*Y2))+15*R1^2*R2^10*Y1*(2*R2^2*X1-Y1*(34*X1*Y1+X2*Y1+3*X1*Y2))+3*R1^10*R2^2*(-5*Y2^2*(3*X2*Y1+X1*Y2+34*X2*Y2)+R2^2*(3*X2*Y1+3*X1*Y2+76*X2*Y2))+R1^9*R2^3*(-5*Y2^2*(33*X2*Y1+11*X1*Y2+61*X2*Y2)+R2^2*(33*X2*Y1+33*X1*Y2+171*X2*Y2))+3*R1^5*R2^7*(R2^2*(57*X1*Y1+11*X2*Y1+11*X1*Y2)+8*Y1*(X2*Y1*(Y1-2*Y2)+X1*(3*Y1-2*Y2)*Y2))+8*R1^6*R2^6*(R2^2*(7*X1*Y1+5*X2*Y1+5*X1*Y2+X2*Y2)-X1*Y2*(3*Y1^2-9*Y1*Y2+Y2^2)-X2*Y1*(Y1^2-9*Y1*Y2+3*Y2^2))+3*R1^4*R2^8*(R2^2*(76*X1*Y1+3*X2*Y1+3*X1*Y2)-8*Y1*(X2*Y1*(2*Y1+Y2)+X1*Y2*(6*Y1+Y2)))+8*R1^7*R2^5*(2*R2^2*(X1*Y1+2*X2*Y1+2*X1*Y2+X2*Y2)+3*Y2*(X1*Y2*(-2*Y1+Y2)+X2*Y1*(-2*Y1+3*Y2)))+8*R1^8*R2^4*(R2^2*(X1*Y1+5*X2*Y1+5*X1*Y2+7*X2*Y2)-3*Y2*(X1*Y2*(Y1+2*Y2)+X2*Y1*(Y1+6*Y2))))+L2^2*(-1050*R1*R2^12*X1*Y1^3-210*R2^13*X1*Y1^3+30*R1^5*R2^10*(25*X1*Y1+2*X2*Y1+2*X1*Y2)+2*R1^6*R2^9*(130*X1*Y1+29*X2*Y1+29*X1*Y2+4*X2*Y2)+R1^13*(90*R2^2*X2*Y2-210*X2*Y2^3)+R1^12*(450*R2^3*X2*Y2-1050*R2*X2*Y2^3)+50*R1^3*R2^10*Y1*(9*R2^2*X1+Y1*(-31*X1*Y1-2*X2*Y1-6*X1*Y2))+30*R1^2*R2^11*Y1*(3*R2^2*X1-Y1*(65*X1*Y1+X2*Y1+3*X1*Y2))+10*R1^10*R2^3*(-5*Y2^2*(6*X2*Y1+2*X1*Y2+31*X2*Y2)+R2^2*(6*X2*Y1+6*X1*Y2+75*X2*Y2))+6*R1^11*R2^2*(-5*Y2^2*(3*X2*Y1+X1*Y2+65*X2*Y2)+R2^2*(3*X2*Y1+3*X1*Y2+143*X2*Y2))+2*R1^9*R2^4*(R2^2*(4*X1*Y1+29*X2*Y1+29*X1*Y2+130*X2*Y2)+Y2*(X1*(-12*Y1-35*Y2)*Y2+X2*(-12*Y1^2-105*Y1*Y2-220*Y2^2)))+2*R1^4*R2^9*(R2^2*(429*X1*Y1+9*X2*Y1+9*X1*Y2)+Y1*(X2*Y1*(-35*Y1-12*Y2)+X1*(-220*Y1^2-105*Y1*Y2-12*Y2^2))))+(R1+R2)^5*(-175*R1*R2^11*X1*Y1^3-35*R2^12*X1*Y1^3+R1^12*(15*R2^2*X2*Y2-35*X2*Y2^3)+R1^11*(75*R2^3*X2*Y2-175*R2*X2*Y2^3)+5*R1^2*R2^10*Y1*(3*R2^2*X1+Y1*(-69*X1*Y1-2*X2*Y1-6*X1*Y2))+25*R1^3*R2^9*Y1*(3*R2^2*X1+Y1*(-13*X1*Y1-2*X2*Y1-6*X1*Y2))+5*R1^9*R2^3*(-5*Y2^2*(6*X2*Y1+2*X1*Y2+13*X2*Y2)+R2^2*(6*X2*Y1+6*X1*Y2+33*X2*Y2))+R1^10*R2^2*(-5*Y2^2*(6*X2*Y1+2*X1*Y2+69*X2*Y2)+R2^2*(6*X2*Y1+6*X1*Y2+153*X2*Y2))+8*R1^6*R2^6*(R2^2*(13*X1*Y1+8*X2*Y1+8*X1*Y2+X2*Y2)+X2*Y1*(-2*Y1^2-27*Y1*Y2-6*Y2^2)+X1*Y2*(-6*Y1^2-27*Y1*Y2-2*Y2^2))+40*R1^7*R2^5*(R2^2*(X1*Y1+2*X2*Y1+2*X1*Y2+X2*Y2)+Y2*(X1*(-3*Y1-2*Y2)*Y2-3*X2*Y1*(Y1+2*Y2)))+5*R1^5*R2^7*(R2^2*(33*X1*Y1+6*X2*Y1+6*X1*Y2)-8*Y1*(3*X1*Y2*(2*Y1+Y2)+X2*Y1*(2*Y1+3*Y2)))+8*R1^8*R2^4*(R2^2*(X1*Y1+8*X2*Y1+8*X1*Y2+13*X2*Y2)+Y2*(-3*X1*Y2*(Y1+4*Y2)+X2*(-3*Y1^2-36*Y1*Y2-16*Y2^2)))+R1^4*R2^8*(R2^2*(153*X1*Y1+6*X2*Y1+6*X1*Y2)-8*Y1*(3*X2*Y1*(4*Y1+Y2)+X1*(16*Y1^2+36*Y1*Y2+3*Y2^2)))))*z,
   (-Y1+Y2)*(3*L2^4*(R1^4*R2^9*X1+35*R2^9*X1*Y1^2*z^2-5*R1^2*R2^9*X1*(Y1^2+z^2)+R1^9*X2*(R2^4+35*Y2^2*z^2-5*R2^2*(Y2^2+z^2)))-2*L2^3*(15*R1^5*R2^10*X1+R1^6*R2^9*(10*X1+X2)+525*R1*R2^10*X1*Y1^2*z^2+210*R2^11*X1*Y1^2*z^2-75*R1^3*R2^10*X1*(Y1^2+z^2)+15*R1^2*R2^9*(Y1*(20*X1*Y1+X2*Y1+2*X1*Y2)*z^2-2*R2^2*X1*(Y1^2+z^2))+3*R1^4*R2^9*(2*R2^2*X1-2*X1*Y1*(7*Y1+Y2)-16*X1*z^2-X2*(Y1^2+z^2))+6*R1^11*X2*(R2^4+35*Y2^2*z^2-5*R2^2*(Y2^2+z^2))+15*R1^10*R2*X2*(R2^4+35*Y2^2*z^2-5*R2^2*(Y2^2+z^2))+R1^9*R2^2*(R2^4*(X1+10*X2)+15*Y2*(2*X2*Y1+X1*Y2+20*X2*Y2)*z^2-3*R2^2*(Y2*(2*X2*Y1+X1*Y2+14*X2*Y2)+(X1+16*X2)*z^2)))-2*L2*(R1+R2)^4*(735*R1*R2^10*X1*Y1^2*z^2+210*R2^11*X1*Y1^2*z^2+8*R1^7*R2^4*(R2^2*(R2^2*(2*X1+X2)-X1*Y2*(2*Y1+Y2)-X2*Y1*(Y1+2*Y2))-3*(R2^2*(X1+X2)-2*X1*Y2*(Y1+Y2)-X2*(Y1^2+4*Y1*Y2-4*Y2^2))*z^2)+R1^6*R2^5*(R2^2*(R2^2*(26*X1+3*X2)-8*X1*Y2*(2*Y1+Y2)-8*X2*Y1*(Y1+2*Y2))-24*(R2^2*(X1+X2)+X1*Y2*(-2*Y1+3*Y2)-X2*(Y1^2-6*Y1*Y2+Y2^2))*z^2)-15*R1^2*R2^9*(Y1*(-56*X1*Y1-3*X2*Y1-6*X1*Y2)*z^2+2*R2^2*X1*(Y1^2+z^2))-15*R1^3*R2^8*(-8*Y1*(X2*Y1+2*X1*(Y1+Y2))*z^2+7*R2^2*X1*(Y1^2+z^2))+6*R1^11*X2*(R2^4+35*Y2^2*z^2-5*R2^2*(Y2^2+z^2))+21*R1^10*R2*X2*(R2^4+35*Y2^2*z^2-5*R2^2*(Y2^2+z^2))+3*R1^4*R2^7*(2*R2^4*X1+8*(2*X2*Y1*(Y1+Y2)+X1*(-4*Y1^2+4*Y1*Y2+Y2^2))*z^2+R2^2*(Y1*(-38*X1*Y1-3*X2*Y1-6*X1*Y2)+(-44*X1-3*X2)*z^2))+3*R1^5*R2^6*(7*R2^4*X1+8*(X2*Y1*(-3*Y1+2*Y2)+X1*(Y1^2-6*Y1*Y2+Y2^2))*z^2-8*R2^2*(Y1*((X1+X2)*Y1+2*X1*Y2)+(3*X1+X2)*z^2))+8*R1^8*R2^3*(R2^4*(X1+2*X2)+15*Y2*(X1*Y2+2*X2*(Y1+Y2))*z^2-3*R2^2*(Y2*(2*X2*Y1+(X1+X2)*Y2)+(X1+3*X2)*z^2))+R1^9*R2^2*(R2^4*(3*X1+26*X2)+15*Y2*(6*X2*Y1+3*X1*Y2+56*X2*Y2)*z^2+R2^2*(X2*(-18*Y1*Y2-114*Y2^2-132*z^2)-9*X1*(Y2^2+z^2))))+2*L2^2*(R1+R2)^2*(945*R1*R2^10*X1*Y1^2*z^2+315*R2^11*X1*Y1^2*z^2+15*R1^3*R2^8*(9*R2^2*X1^3+4*Y1*(X2*Y1+2*X1*Y2)*z^2)+4*R1^7*R2^4*(R2^2*(R2^2*(2*X1+X2)-X2*Y1*(Y1-4*Y2)+2*X1*Y2*(-Y1+Y2))+3*(R2^2*X2+X2*Y1*(Y1-8*Y2)+2*X1*(Y1-2*Y2)*Y2)*z^2)+3*R1^4*R2^7*(R2^2*(3*R2^2*X1+Y1*(-35*X1*Y1-3*X2*Y1-6*X1*Y2))+(R2^2*(-41*X1-3*X2)+4*X1*Y2*(-8*Y1+Y2)+8*X2*Y1*(-2*Y1+Y2))*z^2)+R1^6*R2^5*(R2^2*(R2^2*(25*X1+3*X2)+8*X2*Y1*(Y1-Y2)+4*X1*(4*Y1-Y2)*Y2)+12*(R2^2*X1-2*X2*Y1*(Y1-3*Y2)+X1*Y2*(-4*Y1+3*Y2))*z^2)+12*R1^5*R2^6*(-(R2^2*(9*R2^2*X1+X2*Y1^2+2*X1*Y1*Y2))-(R2^2*(2*X1+X2)+2*X1*Y2*(-3*Y1+Y2)+X2*Y1*(-3*Y1+4*Y2))*z^2)+45*R1^2*R2^9*(Y1*(17*X1*Y1+X2*Y1+2*X1*Y2)*z^2-R2^2*X1*(Y1^2+z^2))+9*R1^11*X2*(R2^4+35*Y2^2*z^2-5*R2^2*(Y2^2+z^2))+27*R1^10*R2*X2*(R2^4+35*Y2^2*z^2-5*R2^2*(Y2^2+z^2))+4*R1^8*R2^3*(R2^4*(X1+2*X2)+15*Y2*(2*X2*Y1+X1*Y2)*z^2-3*R2^2*(Y2*(2*X2*Y1+X1*Y2)+(X1+2*X2)*z^2))+R1^9*R2^2*(R2^4*(3*X1+25*X2)+45*Y2*(2*X2*Y1+X1*Y2+17*X2*Y2)*z^2+R2^2*(X2*(-18*Y1*Y2-105*Y2^2-123*z^2)-9*X1*(Y2^2+z^2))))+(R1+R2)^6*(420*R1*R2^10*X1*Y1^2*z^2+105*R2^11*X1*Y1^2*z^2+8*R1^7*R2^4*(R2^2*(R2^2*(2*X1+X2)-2*X1*Y2*(Y1+2*Y2)-X2*Y1*(Y1+8*Y2))+3*(R2^2*(-2*X1-3*X2)+X2*Y1^2+2*(X1+8*X2)*Y1*Y2+8*(X1+X2)*Y2^2)*z^2)+R1^6*R2^5*(R2^2*(R2^2*(19*X1+2*X2)-16*X2*Y1*(2*Y1+Y2)-8*X1*Y2*(8*Y1+Y2))-24*(R2^2*(3*X1+2*X2)+X1*(-8*Y1-7*Y2)*Y2-2*X2*(2*Y1^2+7*Y1*Y2+Y2^2))*z^2)-15*R1^2*R2^9*(Y1*(-43*X1*Y1-2*X2*Y1-4*X1*Y2)*z^2+R2^2*X1*(Y1^2+z^2))-60*R1^3*R2^8*(-2*Y1*(4*X1*Y1+X2*Y1+2*X1*Y2)*z^2+R2^2*X1*(Y1^2+z^2))+3*R1^11*X2*(R2^4+35*Y2^2*z^2-5*R2^2*(Y2^2+z^2))+12*R1^10*R2*X2*(R2^4+35*Y2^2*z^2-5*R2^2*(Y2^2+z^2))+3*R1^4*R2^7*(R2^4*X1+8*(8*(X1+X2)*Y1^2+2*(8*X1+X2)*Y1*Y2+X1*Y2^2)*z^2+R2^2*(Y1*(-29*X1*Y1-2*X2*Y1-4*X1*Y2)+(-33*X1-2*X2)*z^2))+12*R1^5*R2^6*(R2^4*X1+2*(X2*Y1*(7*Y1+8*Y2)+2*X1*(Y1^2+7*Y1*Y2+2*Y2^2))*z^2-2*R2^2*(Y1*(X2*Y1+2*X1*(Y1+Y2))+(4*X1+X2)*z^2))+8*R1^8*R2^3*(R2^4*(X1+2*X2)+15*Y2*(2*X2*Y1+X1*Y2+4*X2*Y2)*z^2-3*R2^2*(Y2*(X1*Y2+2*X2*(Y1+Y2))+(X1+4*X2)*z^2))+R1^9*R2^2*(R2^4*(2*X1+19*X2)+15*Y2*(4*X2*Y1+2*X1*Y2+43*X2*Y2)*z^2+R2^2*(X2*(-12*Y1*Y2-87*Y2^2-99*z^2)-6*X1*(Y2^2+z^2))))),
   3*(Y1-Y2)*z*(L2^4*(15*R1^2*R2^9*X1*Y1-35*R2^9*X1*Y1*z^2+5*R1^9*X2*Y2*(3*R2^2-7*z^2))+(R1+R2)^7*(-105*R1*R2^9*X1*Y1*z^2-35*R2^10*X1*Y1*z^2+5*R1^10*X2*Y2*(3*R2^2-7*z^2)+15*R1^9*R2*X2*Y2*(3*R2^2-7*z^2)+5*R1^2*R2^8*(3*R2^2*X1*Y1-2*(12*X1*Y1+X2*Y1+X1*Y2)*z^2)+5*R1^3*R2^7*(9*R2^2*X1*Y1-2*(8*X1*Y1+3*X2*Y1+3*X1*Y2)*z^2)+2*R1^6*R2^4*(R2^2*(4*X1*Y1+11*X2*Y1+11*X1*Y2+4*X2*Y2)+(-4*X1*Y1-21*X2*Y1-21*X1*Y2-24*X2*Y2)*z^2)+2*R1^5*R2^5*(R2^2*(12*X1*Y1+9*X2*Y1+9*X1*Y2)+(-12*X1*Y1-23*X2*Y1-23*X1*Y2-12*X2*Y2)*z^2)+2*R1^4*R2^6*(3*R2^2*(8*X1*Y1+X2*Y1+X1*Y2)+(-24*X1*Y1-21*X2*Y1-21*X1*Y2-4*X2*Y2)*z^2)+2*R1^7*R2^3*(R2^2*(9*X2*Y1+9*X1*Y2+12*X2*Y2)-5*(3*X2*Y1+3*X1*Y2+8*X2*Y2)*z^2)+2*R1^8*R2^2*(3*R2^2*(X2*Y1+X1*Y2+8*X2*Y2)-5*(X2*Y1+X1*Y2+12*X2*Y2)*z^2))-2*L2*(R1+R2)^5*(-175*R1*R2^9*X1*Y1*z^2-70*R2^10*X1*Y1*z^2+10*R1^10*X2*Y2*(3*R2^2-7*z^2)+25*R1^9*R2*X2*Y2*(3*R2^2-7*z^2)+5*R1^7*R2^3*(X2*Y1+X1*Y2)*(3*R2^2-5*z^2)+15*R1^5*R2^5*(X2*Y1+X1*Y2)*(R2^2+z^2)+25*R1^3*R2^7*(3*R2^2*X1*Y1-(X2*Y1+X1*Y2)*z^2)+15*R1^2*R2^8*(2*R2^2*X1*Y1-(8*X1*Y1+X2*Y1+X1*Y2)*z^2)+R1^4*R2^6*(R2^2*(48*X1*Y1+9*X2*Y1+9*X1*Y2)+(16*X1*Y1+X2*Y1+X1*Y2-8*X2*Y2)*z^2)+3*R1^8*R2^2*(R2^2*(3*X2*Y1+3*X1*Y2+16*X2*Y2)-5*(X2*Y1+X1*Y2+8*X2*Y2)*z^2)+R1^6*R2^4*(R2^2*(8*X1*Y1+X2*Y1+X1*Y2+8*X2*Y2)+(-8*X1*Y1+X2*Y1+X1*Y2+16*X2*Y2)*z^2))+L2^3*(-150*R1^3*R2^10*X1*Y1-6*R1^4*R2^9*(15*X1*Y1+X2*Y1+X1*Y2)+350*R1*R2^10*X1*Y1*z^2+140*R2^11*X1*Y1*z^2-20*R1^11*X2*Y2*(3*R2^2-7*z^2)-50*R1^10*R2*X2*Y2*(3*R2^2-7*z^2)+10*R1^2*R2^9*(-6*R2^2*X1*Y1+(21*X1*Y1+X2*Y1+X1*Y2)*z^2)-2*R1^9*R2^2*(3*R2^2*(X2*Y1+X1*Y2+15*X2*Y2)-5*(X2*Y1+X1*Y2+21*X2*Y2)*z^2))+2*L2^2*(15*R1^5*R2^10*(25*X1*Y1+2*X2*Y1+2*X1*Y2)+R1^6*R2^9*(130*X1*Y1+29*X2*Y1+29*X1*Y2+4*X2*Y2)-525*R1*R2^12*X1*Y1*z^2-105*R2^13*X1*Y1*z^2+15*R1^13*X2*Y2*(3*R2^2-7*z^2)+75*R1^12*R2*X2*Y2*(3*R2^2-7*z^2)+25*R1^3*R2^10*(9*R2^2*X1*Y1+(-35*X1*Y1-2*X2*Y1-2*X1*Y2)*z^2)+15*R1^2*R2^11*(3*R2^2*X1*Y1-(67*X1*Y1+X2*Y1+X1*Y2)*z^2)+R1^9*R2^4*(R2^2*(4*X1*Y1+29*X2*Y1+29*X1*Y2+130*X2*Y2)+(-4*X1*Y1-43*X2*Y1-43*X1*Y2-294*X2*Y2)*z^2)+R1^4*R2^9*(R2^2*(429*X1*Y1+9*X2*Y1+9*X1*Y2)+(-294*X1*Y1-43*X2*Y1-43*X1*Y2-4*X2*Y2)*z^2)+5*R1^10*R2^3*(R2^2*(6*X2*Y1+6*X1*Y2+75*X2*Y2)-5*(2*X2*Y1+2*X1*Y2+35*X2*Y2)*z^2)+3*R1^11*R2^2*(R2^2*(3*X2*Y1+3*X1*Y2+143*X2*Y2)-5*(X2*Y1+X1*Y2+67*X2*Y2)*z^2))),
   -3*(Y1-Y2)*(2*L2^2*(R1+R2)^4*(R1^4*R2^6*(3*R1^3-2*R1^2*R2+9*R1*R2^2+9*R2^3)*X1+R1^6*R2^4*(9*R1^3+9*R1^2*R2-2*R1*R2^2+3*R2^3)*X2-6*R1^2*R2^2*(15*R1*R2^6*X1+15*R2^7*X1+R1^5*R2^2*(3*X1-4*X2)+R1^3*R2^4*(X1-2*X2)+15*R1^7*X2+15*R1^6*R2*X2+R1^4*R2^3*(-2*X1+X2)+R1^2*R2^5*(-4*X1+3*X2))*z^2+(105*R1*R2^8*X1+105*R2^9*X1-3*R1^5*R2^4*(X1-4*X2)+15*R1^7*R2^2*(X1-2*X2)+3*R1^4*R2^5*(4*X1-X2)+105*R1^9*X2+105*R1^8*R2*X2+15*R1^2*R2^7*(-2*X1+X2)-5*R1^6*R2^3*(2*X1+X2)-5*R1^3*R2^6*(X1+2*X2))*z^4)-2*L2*(R1+R2)^6*(R1^4*R2^6*(3*R1+2*R2)*(R1^2+3*R2^2)*X1+R1^6*R2^4*(2*R1+3*R2)*(3*R1^2+R2^2)*X2-6*R1^2*R2^2*(15*R1*R2^6*X1+10*R2^7*X1+10*R1^7*X2+15*R1^6*R2*X2+R1^4*R2^3*(2*X1+X2)+R1^3*R2^4*(X1+2*X2)+R1^2*R2^5*(4*X1+3*X2)+R1^5*R2^2*(3*X1+4*X2))*z^2+(105*R1*R2^8*X1+70*R2^9*X1-5*R1^3*R2^6*(X1-2*X2)+5*R1^6*R2^3*(2*X1-X2)+70*R1^9*X2+105*R1^8*R2*X2+15*R1^2*R2^7*(2*X1+X2)-3*R1^4*R2^5*(4*X1+X2)+15*R1^7*R2^2*(X1+2*X2)-3*R1^5*R2^4*(X1+4*X2))*z^4)+(R1+R2)^8*(R1^4*R2^6*(2*R1^3+4*R1^2*R2+6*R1*R2^2+3*R2^3)*X1+R1^6*R2^4*(3*R1^3+6*R1^2*R2+4*R1*R2^2+2*R2^3)*X2-6*R1^2*R2^2*(10*R1*R2^6*X1+5*R2^7*X1+5*R1^7*X2+10*R1^6*R2*X2+2*R1^2*R2^5*(4*X1+X2)+2*R1^3*R2^4*(3*X1+2*X2)+2*R1^4*R2^3*(2*X1+3*X2)+2*R1^5*R2^2*(X1+4*X2))*z^2+5*(14*R1*R2^8*X1+7*R2^9*X1+7*R1^9*X2+14*R1^8*R2*X2+2*R1^2*R2^7*(6*X1+X2)+2*R1^3*R2^6*(5*X1+2*X2)+2*R1^4*R2^5*(4*X1+3*X2)+2*R1^5*R2^4*(3*X1+4*X2)+2*R1^6*R2^3*(2*X1+5*X2)+2*R1^7*R2^2*(X1+6*X2))*z^4)+L2^4*(3*R1^4*R2^9*X1-30*R1^2*R2^9*X1*z^2+35*R2^9*X1*z^4+R1^9*X2*(3*R2^4-30*R2^2*z^2+35*z^4))-2*L2^3*(15*R1^5*R2^10*X1+R1^6*R2^9*(10*X1+X2)-150*R1^3*R2^10*X1*z^2+175*R1*R2^10*X1*z^4+70*R2^11*X1*z^4+6*R1^4*R2^9*(R2^2*X1-(16*X1+X2)*z^2)+5*R1^2*R2^9*z^2*(-12*R2^2*X1+(22*X1+X2)*z^2)+2*R1^11*X2*(3*R2^4-30*R2^2*z^2+35*z^4)+5*R1^10*R2*X2*(3*R2^4-30*R2^2*z^2+35*z^4)+R1^9*R2^2*(R2^4*(X1+10*X2)-6*R2^2*(X1+16*X2)*z^2+5*(X1+22*X2)*z^4))),
   -3*(Y1-Y2)*(-2*L2^3*(R1^4*R2^6*(R1+R2)^3*(R1^2-3*R1*R2+6*R2^2)*Y1+R1^2*R2^9*(-14*R1^2-25*R1*R2-10*R2^2)*Y1^3+R1^4*R2^4*(R1^2*(R1+R2)^3*(6*R1^2-3*R1*R2+R2^2)-3*R2^5*Y1^2)*Y2-3*R1^9*R2^4*Y1*Y2^2+R1^9*R2^2*(-10*R1^2-25*R1*R2-14*R2^2)*Y2^3+(-75*R1^3*R2^10*Y1+175*R1*R2^10*Y1^3+70*R2^11*Y1^3-3*R1^4*R2^9*(16*Y1+Y2)-5*R1^2*R2^9*Y1*(6*R2^2-20*Y1^2-3*Y1*Y2)+R1^11*(-30*R2^2*Y2+70*Y2^3)+R1^10*(-75*R2^3*Y2+175*R2*Y2^3)+R1^9*R2^2*(-3*R2^2*(Y1+16*Y2)+5*Y2^2*(3*Y1+20*Y2)))*z^2)+L2^4*(3*R1^4*R2^9*Y1+35*R2^9*Y1^3*z^2-5*R1^2*R2^9*Y1*(Y1^2+3*z^2)+R1^9*Y2*(3*R2^4+35*Y2^2*z^2-5*R2^2*(Y2^2+3*z^2)))+2*L2^2*(R1+R2)^2*(315*R1*R2^10*Y1^3*z^2+105*R2^11*Y1^3*z^2+4*R1^7*R2^4*(R2^4*(2*Y1+Y2)+3*Y1*(Y1-4*Y2)*Y2*z^2-R2^2*Y2*(Y1^2-2*Y1*Y2-3*z^2))-15*R1^2*R2^9*Y1*(Y1*(-17*Y1-3*Y2)*z^2+R2^2*(Y1^2+3*z^2))-15*R1^3*R2^8*Y1*(-4*Y1*Y2*z^2+3*R2^2*(Y1^2+3*z^2))+R1^6*R2^5*(R2^4*(25*Y1+3*Y2)-12*Y1*(2*Y1-3*Y2)*Y2*z^2+4*R2^2*Y1*(2*Y1*Y2-Y2^2+3*z^2))+R1^4*R2^7*(9*R2^4*Y1+12*Y1*Y2*(-4*Y1+Y2)*z^2+R2^2*(-35*Y1^3-9*Y1^2*Y2-123*Y1*z^2-9*Y2*z^2))+R1^11*(9*R2^4*Y2+105*Y2^3*z^2-15*R2^2*(Y2^3+3*Y2*z^2))+R1^10*(27*R2^5*Y2+315*R2*Y2^3*z^2-45*R2^3*(Y2^3+3*Y2*z^2))+3*R1^5*R2^6*(9*R2^4*Y1+4*Y1*(3*Y1-2*Y2)*Y2*z^2-4*R2^2*(Y1^2*Y2+(2*Y1+Y2)*z^2))+4*R1^8*(R2^7*(Y1+2*Y2)+15*R2^3*Y1*Y2^2*z^2-3*R2^5*(Y1*Y2^2+(Y1+2*Y2)*z^2))+R1^9*R2^2*(R2^4*(3*Y1+25*Y2)+15*Y2^2*(3*Y1+17*Y2)*z^2+R2^2*(-35*Y2^3-123*Y2*z^2-9*Y1*(Y2^2+z^2))))+(R1+R2)^6*(140*R1*R2^10*Y1^3*z^2+35*R2^11*Y1^3*z^2+R1^4*R2^7*(R2^2*Y1*(3*R2^2-29*Y1^2-6*Y1*Y2)+(-99*R2^2*Y1+64*Y1^3-6*R2^2*Y2+192*Y1^2*Y2+24*Y1*Y2^2)*z^2)+4*R1^5*R2^6*(R2^2*Y1*(3*R2^2-4*Y1^2-6*Y1*Y2)-2*(3*R2^2*(4*Y1+Y2)+Y1*(-2*Y1^2-21*Y1*Y2-12*Y2^2))*z^2)-5*R1^2*R2^9*Y1*(Y1*(-43*Y1-6*Y2)*z^2+R2^2*(Y1^2+3*z^2))-20*R1^3*R2^8*Y1*(-2*Y1*(4*Y1+3*Y2)*z^2+R2^2*(Y1^2+3*z^2))+R1^11*Y2*(3*R2^4+35*Y2^2*z^2-5*R2^2*(Y2^2+3*z^2))+R1^10*(12*R2^5*Y2+140*R2*Y2^3*z^2-20*R2^3*(Y2^3+3*Y2*z^2))+R1^6*R2^5*(R2^4*(19*Y1+2*Y2)+8*Y2*(12*Y1^2+21*Y1*Y2+2*Y2^2)*z^2-8*R2^2*(Y1*Y2*(4*Y1+Y2)+3*(3*Y1+2*Y2)*z^2))+8*R1^7*R2^4*(R2^4*(2*Y1+Y2)+Y2*(3*Y1^2+24*Y1*Y2+8*Y2^2)*z^2-R2^2*(Y1*Y2*(Y1+4*Y2)+3*(2*Y1+3*Y2)*z^2))+8*R1^8*R2^3*(R2^4*(Y1+2*Y2)+5*Y2^2*(3*Y1+4*Y2)*z^2+R2^2*((-3*Y1-2*Y2)*Y2^2-3*(Y1+4*Y2)*z^2))+R1^9*R2^2*(R2^4*(2*Y1+19*Y2)+5*Y2^2*(6*Y1+43*Y2)*z^2+R2^2*(-29*Y2^3-99*Y2*z^2-6*Y1*(Y2^2+z^2))))-2*L2*(R1+R2)^4*(245*R1*R2^10*Y1^3*z^2+70*R2^11*Y1^3*z^2+R1^4*R2^7*(R2^2*Y1*(6*R2^2-38*Y1^2-9*Y1*Y2)+(-132*R2^2*Y1-32*Y1^3-9*R2^2*Y2+48*Y1^2*Y2+24*Y1*Y2^2)*z^2)-5*R1^2*R2^9*Y1*(Y1*(-56*Y1-9*Y2)*z^2+2*R2^2*(Y1^2+3*z^2))-5*R1^3*R2^8*Y1*(-8*Y1*(2*Y1+3*Y2)*z^2+7*R2^2*(Y1^2+3*z^2))+R1^6*R2^5*(R2^4*(26*Y1+3*Y2)+8*Y2*(3*Y1^2-9*Y1*Y2+Y2^2)*z^2-8*R2^2*(Y1+Y2)*(Y1*Y2+3*z^2))+8*R1^7*R2^4*(R2^4*(2*Y1+Y2)+Y2*(3*Y1^2+6*Y1*Y2-4*Y2^2)*z^2-R2^2*(Y1+Y2)*(Y1*Y2+3*z^2))+R1^11*(6*R2^4*Y2+70*Y2^3*z^2-10*R2^2*(Y2^3+3*Y2*z^2))+R1^10*(21*R2^5*Y2+245*R2*Y2^3*z^2-35*R2^3*(Y2^3+3*Y2*z^2))+R1^5*R2^6*(21*R2^4*Y1+8*Y1*(Y1^2-9*Y1*Y2+3*Y2^2)*z^2-8*R2^2*(Y1^2*(Y1+3*Y2)+3*(3*Y1+Y2)*z^2))+R1^9*R2^2*(R2^4*(3*Y1+26*Y2)+5*Y2^2*(9*Y1+56*Y2)*z^2+R2^2*(-38*Y2^3-132*Y2*z^2-9*Y1*(Y2^2+z^2)))+8*R1^8*R2^3*(R2^4*(Y1+2*Y2)+5*Y2^2*(3*Y1+2*Y2)*z^2-R2^2*(Y2^3+9*Y2*z^2+3*Y1*(Y2^2+z^2))))),
   -3*(Y1-Y2)*z*(L2^4*(3*R1^4*R2^9+35*R2^9*Y1^2*z^2-5*R1^2*R2^9*(3*Y1^2+z^2)+R1^9*(3*R2^4+35*Y2^2*z^2-5*R2^2*(3*Y2^2+z^2)))+2*L2^2*(R1+R2)^3*(210*R1*R2^9*Y1^2*z^2+105*R2^10*Y1^2*z^2+R1^4*R2^6*(9*R2^4+2*(12*Y1^2-17*Y1*Y2+2*Y2^2)*z^2+R2^2*(-24*Y1^2-18*Y1*Y2-14*z^2))+2*R1^8*R2^2*(5*R2^4+15*Y2*(Y1+2*Y2)*z^2+R2^2*(-9*Y1*Y2-12*Y2^2-7*z^2))+10*R1^3*R2^7*(Y1*(-4*Y1+Y2)*z^2-3*R2^2*(3*Y1^2+z^2))-15*R1^2*R2^8*(-2*Y1*(2*Y1+Y2)*z^2+R2^2*(3*Y1^2+z^2))+2*R1^5*R2^5*(9*R2^4-3*(2*Y1^2-7*Y1*Y2+2*Y2^2)*z^2+R2^2*(6*Y1^2-3*Y1*Y2+z^2))+2*R1^7*R2^3*(R2^4+5*(Y1-4*Y2)*Y2*z^2+R2^2*(-3*(Y1-2*Y2)*Y2+z^2))+2*R1^6*R2^4*(5*R2^4+(2*Y1^2-17*Y1*Y2+12*Y2^2)*z^2+R2^2*(-2*Y1^2+7*Y1*Y2-2*Y2^2+z^2))+R1^10*(9*R2^4+105*Y2^2*z^2-15*R2^2*(3*Y2^2+z^2))+R1^9*(18*R2^5+210*R2*Y2^2*z^2-30*R2^3*(3*Y2^2+z^2)))+(R1+R2)^7*(105*R1*R2^9*Y1^2*z^2+35*R2^10*Y1^2*z^2+4*R1^7*R2^3*(3*R2^2*(R2^2-3*Y1*Y2-2*Y2^2)-5*(R2^2-3*Y1*Y2-4*Y2^2)*z^2)+R1^4*R2^6*(3*R2^2*(R2^2-4*Y1*(4*Y1+Y2))-4*(5*R2^2-12*Y1^2-21*Y1*Y2-2*Y2^2)*z^2)+R1^5*R2^5*(9*R2^4+4*(6*Y1^2+23*Y1*Y2+6*Y2^2)*z^2+R2^2*(-24*Y1^2-36*Y1*Y2-20*z^2))+4*R1^6*R2^4*(3*R2^4+(2*Y1^2+21*Y1*Y2+12*Y2^2)*z^2+R2^2*(-2*Y1^2-11*Y1*Y2-2*Y2^2-5*z^2))+4*R1^8*R2^2*(3*R2^4+5*Y2*(Y1+6*Y2)*z^2+R2^2*(-3*Y2*(Y1+4*Y2)-5*z^2))-5*R1^2*R2^8*(-4*Y1*(6*Y1+Y2)*z^2+R2^2*(3*Y1^2+z^2))-5*R1^3*R2^7*(-4*Y1*(4*Y1+3*Y2)*z^2+3*R2^2*(3*Y1^2+z^2))+R1^10*(3*R2^4+35*Y2^2*z^2-5*R2^2*(3*Y2^2+z^2))+R1^9*(9*R2^5+105*R2*Y2^2*z^2-15*R2^3*(3*Y2^2+z^2)))+L2^3*(-22*R1^6*R2^9-30*R1^5*R2^10-350*R1*R2^10*Y1^2*z^2-140*R2^11*Y1^2*z^2-2*R1^4*R2^9*(6*R2^2-45*Y1^2-6*Y1*Y2-17*z^2)+50*R1^3*R2^10*(3*Y1^2+z^2)-2*R1^9*R2^2*(11*R2^4+5*Y2*(2*Y1+21*Y2)*z^2+R2^2*(-6*Y1*Y2-45*Y2^2-17*z^2))+10*R1^2*R2^9*(Y1*(-21*Y1-2*Y2)*z^2+2*R2^2*(3*Y1^2+z^2))+R1^11*(-12*R2^4-140*Y2^2*z^2+20*R2^2*(3*Y2^2+z^2))+R1^10*(-30*R2^5-350*R2*Y2^2*z^2+50*R2^3*(3*Y2^2+z^2)))-2*L2*(R1+R2)^5*(175*R1*R2^9*Y1^2*z^2+70*R2^10*Y1^2*z^2+2*R1^4*R2^6*(3*R2^2*(R2^2-8*Y1^2-3*Y1*Y2)-(11*R2^2+8*Y1^2+Y1*Y2-4*Y2^2)*z^2)+2*R1^8*R2^2*(7*R2^4+15*Y2*(Y1+4*Y2)*z^2+R2^2*(-9*Y1*Y2-24*Y2^2-11*z^2))-10*R1^2*R2^8*(-3*Y1*(4*Y1+Y2)*z^2+R2^2*(3*Y1^2+z^2))-25*R1^3*(-2*R2^7*Y1*Y2*z^2+R2^9*(3*Y1^2+z^2))+10*R1^7*(R2^7+5*R2^3*Y1*Y2*z^2-R2^5*(3*Y1*Y2+z^2))+R1^5*(15*R2^9-30*R2^5*Y1*Y2*z^2-10*R2^7*(3*Y1*Y2+z^2))+R1^10*(6*R2^4+70*Y2^2*z^2-10*R2^2*(3*Y2^2+z^2))+R1^9*(15*R2^5+175*R2*Y2^2*z^2-25*R2^3*(3*Y2^2+z^2))+2*R1^6*R2^4*(7*R2^4+(4*Y1^2-Y1*Y2-8*Y2^2)*z^2-R2^2*(4*Y1^2+Y1*Y2+4*Y2^2+3*z^2)))),
   3*(X1-X2)*z*(L2^4*(3*R1^4*R2^9+35*R2^9*Y1^2*z^2-5*R1^2*R2^9*(3*Y1^2+z^2)+R1^9*(3*R2^4+35*Y2^2*z^2-5*R2^2*(3*Y2^2+z^2)))+2*L2^2*(R1+R2)^3*(210*R1*R2^9*Y1^2*z^2+105*R2^10*Y1^2*z^2+R1^4*R2^6*(9*R2^4+2*(12*Y1^2-17*Y1*Y2+2*Y2^2)*z^2+R2^2*(-24*Y1^2-18*Y1*Y2-14*z^2))+2*R1^8*R2^2*(5*R2^4+15*Y2*(Y1+2*Y2)*z^2+R2^2*(-9*Y1*Y2-12*Y2^2-7*z^2))+10*R1^3*R2^7*(Y1*(-4*Y1+Y2)*z^2-3*R2^2*(3*Y1^2+z^2))-15*R1^2*R2^8*(-2*Y1*(2*Y1+Y2)*z^2+R2^2*(3*Y1^2+z^2))+2*R1^5*R2^5*(9*R2^4-3*(2*Y1^2-7*Y1*Y2+2*Y2^2)*z^2+R2^2*(6*Y1^2-3*Y1*Y2+z^2))+2*R1^7*R2^3*(R2^4+5*(Y1-4*Y2)*Y2*z^2+R2^2*(-3*(Y1-2*Y2)*Y2+z^2))+2*R1^6*R2^4*(5*R2^4+(2*Y1^2-17*Y1*Y2+12*Y2^2)*z^2+R2^2*(-2*Y1^2+7*Y1*Y2-2*Y2^2+z^2))+R1^10*(9*R2^4+105*Y2^2*z^2-15*R2^2*(3*Y2^2+z^2))+R1^9*(18*R2^5+210*R2*Y2^2*z^2-30*R2^3*(3*Y2^2+z^2)))+(R1+R2)^7*(105*R1*R2^9*Y1^2*z^2+35*R2^10*Y1^2*z^2+4*R1^7*R2^3*(3*R2^2*(R2^2-3*Y1*Y2-2*Y2^2)-5*(R2^2-3*Y1*Y2-4*Y2^2)*z^2)+R1^4*R2^6*(3*R2^2*(R2^2-4*Y1*(4*Y1+Y2))-4*(5*R2^2-12*Y1^2-21*Y1*Y2-2*Y2^2)*z^2)+R1^5*R2^5*(9*R2^4+4*(6*Y1^2+23*Y1*Y2+6*Y2^2)*z^2+R2^2*(-24*Y1^2-36*Y1*Y2-20*z^2))+4*R1^6*R2^4*(3*R2^4+(2*Y1^2+21*Y1*Y2+12*Y2^2)*z^2+R2^2*(-2*Y1^2-11*Y1*Y2-2*Y2^2-5*z^2))+4*R1^8*R2^2*(3*R2^4+5*Y2*(Y1+6*Y2)*z^2+R2^2*(-3*Y2*(Y1+4*Y2)-5*z^2))-5*R1^2*R2^8*(-4*Y1*(6*Y1+Y2)*z^2+R2^2*(3*Y1^2+z^2))-5*R1^3*R2^7*(-4*Y1*(4*Y1+3*Y2)*z^2+3*R2^2*(3*Y1^2+z^2))+R1^10*(3*R2^4+35*Y2^2*z^2-5*R2^2*(3*Y2^2+z^2))+R1^9*(9*R2^5+105*R2*Y2^2*z^2-15*R2^3*(3*Y2^2+z^2)))+L2^3*(-22*R1^6*R2^9-30*R1^5*R2^10-350*R1*R2^10*Y1^2*z^2-140*R2^11*Y1^2*z^2-2*R1^4*R2^9*(6*R2^2-45*Y1^2-6*Y1*Y2-17*z^2)+50*R1^3*R2^10*(3*Y1^2+z^2)-2*R1^9*R2^2*(11*R2^4+5*Y2*(2*Y1+21*Y2)*z^2+R2^2*(-6*Y1*Y2-45*Y2^2-17*z^2))+10*R1^2*R2^9*(Y1*(-21*Y1-2*Y2)*z^2+2*R2^2*(3*Y1^2+z^2))+R1^11*(-12*R2^4-140*Y2^2*z^2+20*R2^2*(3*Y2^2+z^2))+R1^10*(-30*R2^5-350*R2*Y2^2*z^2+50*R2^3*(3*Y2^2+z^2)))-2*L2*(R1+R2)^5*(175*R1*R2^9*Y1^2*z^2+70*R2^10*Y1^2*z^2+2*R1^4*R2^6*(3*R2^2*(R2^2-8*Y1^2-3*Y1*Y2)-(11*R2^2+8*Y1^2+Y1*Y2-4*Y2^2)*z^2)+2*R1^8*R2^2*(7*R2^4+15*Y2*(Y1+4*Y2)*z^2+R2^2*(-9*Y1*Y2-24*Y2^2-11*z^2))-10*R1^2*R2^8*(-3*Y1*(4*Y1+Y2)*z^2+R2^2*(3*Y1^2+z^2))-25*R1^3*(-2*R2^7*Y1*Y2*z^2+R2^9*(3*Y1^2+z^2))+10*R1^7*(R2^7+5*R2^3*Y1*Y2*z^2-R2^5*(3*Y1*Y2+z^2))+R1^5*(15*R2^9-30*R2^5*Y1*Y2*z^2-10*R2^7*(3*Y1*Y2+z^2))+R1^10*(6*R2^4+70*Y2^2*z^2-10*R2^2*(3*Y2^2+z^2))+R1^9*(15*R2^5+175*R2*Y2^2*z^2-25*R2^3*(3*Y2^2+z^2))+2*R1^6*R2^4*(7*R2^4+(4*Y1^2-Y1*Y2-8*Y2^2)*z^2-R2^2*(4*Y1^2+Y1*Y2+4*Y2^2+3*z^2)))),
   3*(X1-X2)*(2*L2^2*(R1+R2)^4*(R1^4*R2^6*(3*R1^3-2*R1^2*R2+9*R1*R2^2+9*R2^3)*Y1+R1^6*R2^4*(9*R1^3+9*R1^2*R2-2*R1*R2^2+3*R2^3)*Y2-6*R1^2*R2^2*(15*R1*R2^6*Y1+15*R2^7*Y1+R1^5*R2^2*(3*Y1-4*Y2)+R1^3*R2^4*(Y1-2*Y2)+15*R1^7*Y2+15*R1^6*R2*Y2+R1^4*R2^3*(-2*Y1+Y2)+R1^2*R2^5*(-4*Y1+3*Y2))*z^2+(105*R1*R2^8*Y1+105*R2^9*Y1-3*R1^5*R2^4*(Y1-4*Y2)+15*R1^7*R2^2*(Y1-2*Y2)+3*R1^4*R2^5*(4*Y1-Y2)+105*R1^9*Y2+105*R1^8*R2*Y2+15*R1^2*R2^7*(-2*Y1+Y2)-5*R1^6*R2^3*(2*Y1+Y2)-5*R1^3*R2^6*(Y1+2*Y2))*z^4)-2*L2*(R1+R2)^6*(R1^4*R2^6*(3*R1+2*R2)*(R1^2+3*R2^2)*Y1+R1^6*R2^4*(2*R1+3*R2)*(3*R1^2+R2^2)*Y2-6*R1^2*R2^2*(15*R1*R2^6*Y1+10*R2^7*Y1+10*R1^7*Y2+15*R1^6*R2*Y2+R1^4*R2^3*(2*Y1+Y2)+R1^3*R2^4*(Y1+2*Y2)+R1^2*R2^5*(4*Y1+3*Y2)+R1^5*R2^2*(3*Y1+4*Y2))*z^2+(105*R1*R2^8*Y1+70*R2^9*Y1-5*R1^3*R2^6*(Y1-2*Y2)+5*R1^6*R2^3*(2*Y1-Y2)+70*R1^9*Y2+105*R1^8*R2*Y2+15*R1^2*R2^7*(2*Y1+Y2)-3*R1^4*R2^5*(4*Y1+Y2)+15*R1^7*R2^2*(Y1+2*Y2)-3*R1^5*R2^4*(Y1+4*Y2))*z^4)+(R1+R2)^8*(R1^4*R2^6*(2*R1^3+4*R1^2*R2+6*R1*R2^2+3*R2^3)*Y1+R1^6*R2^4*(3*R1^3+6*R1^2*R2+4*R1*R2^2+2*R2^3)*Y2-6*R1^2*R2^2*(10*R1*R2^6*Y1+5*R2^7*Y1+5*R1^7*Y2+10*R1^6*R2*Y2+2*R1^2*R2^5*(4*Y1+Y2)+2*R1^3*R2^4*(3*Y1+2*Y2)+2*R1^4*R2^3*(2*Y1+3*Y2)+2*R1^5*R2^2*(Y1+4*Y2))*z^2+5*(14*R1*R2^8*Y1+7*R2^9*Y1+7*R1^9*Y2+14*R1^8*R2*Y2+2*R1^2*R2^7*(6*Y1+Y2)+2*R1^3*R2^6*(5*Y1+2*Y2)+2*R1^4*R2^5*(4*Y1+3*Y2)+2*R1^5*R2^4*(3*Y1+4*Y2)+2*R1^6*R2^3*(2*Y1+5*Y2)+2*R1^7*R2^2*(Y1+6*Y2))*z^4)+L2^4*(3*R1^4*R2^9*Y1-30*R1^2*R2^9*Y1*z^2+35*R2^9*Y1*z^4+R1^9*Y2*(3*R2^4-30*R2^2*z^2+35*z^4))-2*L2^3*(15*R1^5*R2^10*Y1+R1^6*R2^9*(10*Y1+Y2)-150*R1^3*R2^10*Y1*z^2+175*R1*R2^10*Y1*z^4+70*R2^11*Y1*z^4+6*R1^4*R2^9*(R2^2*Y1-(16*Y1+Y2)*z^2)+5*R1^2*R2^9*z^2*(-12*R2^2*Y1+(22*Y1+Y2)*z^2)+2*R1^11*Y2*(3*R2^4-30*R2^2*z^2+35*z^4)+5*R1^10*R2*Y2*(3*R2^4-30*R2^2*z^2+35*z^4)+R1^9*R2^2*(R2^4*(Y1+10*Y2)-6*R2^2*(Y1+16*Y2)*z^2+5*(Y1+22*Y2)*z^4)))}/(Pi*(R1*R2)^9*((R1+R2)^2-L2)^5)]


EdgePotential[{InfPoint[\[Theta]1_],InfPoint[\[Theta]2_]}, {x_,y_,z_}, {c0_/;(c0\[Element]Booleans),c1_/;(c1\[Element]Booleans),c2_/;(c2\[Element]Booleans),c3_/;(c3\[Element]Booleans),c4_/;(c4\[Element]Booleans),c5_/;(c5\[Element]Booleans)}] :=
  Module[{\[CapitalDelta]\[Theta],c\[Theta]1,s\[Theta]1},
    \[CapitalDelta]\[Theta]=\[Theta]2-\[Theta]1;
    c\[Theta]1=Cos[\[Theta]1]; s\[Theta]1=Sin[\[Theta]1];
    {If[c0,Quiet@edgepotentialC0ii[\[CapitalDelta]\[Theta],c\[Theta]1,s\[Theta]1,x,y,z],0],
     If[c1,Quiet@edgepotentialC1ii[\[CapitalDelta]\[Theta],c\[Theta]1,s\[Theta]1,x,y,z],{0,0,0}],
     If[c2,Quiet@edgepotentialC2ii[\[CapitalDelta]\[Theta],c\[Theta]1,s\[Theta]1,x,y,z],{0,0,0,0,0}],
     If[c3,Quiet@edgepotentialC3ii[\[CapitalDelta]\[Theta],c\[Theta]1,s\[Theta]1,x,y,z],{0,0,0,0,0,0,0}],
     If[c4,Quiet@edgepotentialC4ii[\[CapitalDelta]\[Theta],c\[Theta]1,s\[Theta]1,x,y,z],{0,0,0,0,0,0,0,0,0}],
     If[c5,Quiet@edgepotentialC5ii[\[CapitalDelta]\[Theta],c\[Theta]1,s\[Theta]1,x,y,z],{0,0,0,0,0,0,0,0,0,0,0}]}]


EdgePotential[{InfPoint[\[Theta]1_],{x2_,y2_}}, {x_,y_,z_}, {c0_/;(c0\[Element]Booleans),c1_/;(c1\[Element]Booleans),c2_/;(c2\[Element]Booleans),c3_/;(c3\[Element]Booleans),c4_/;(c4\[Element]Booleans),c5_/;(c5\[Element]Booleans)}] :=
  Module[{c\[Theta]1,s\[Theta]1,R2},
    c\[Theta]1=Cos[\[Theta]1]; s\[Theta]1=Sin[\[Theta]1];
    R2=Sqrt[(x-x2)^2+(y-y2)^2+z^2];
    {If[c0,Quiet@edgepotentialC0ip[c\[Theta]1,s\[Theta]1,R2,x-x2,y-y2,z],0],
     If[c1,Quiet@edgepotentialC1ip[c\[Theta]1,s\[Theta]1,R2,x-x2,y-y2,z],{0,0,0}],
     If[c2,Quiet@edgepotentialC2ip[c\[Theta]1,s\[Theta]1,R2,x-x2,y-y2,z],{0,0,0,0,0}],
     If[c3,Quiet@edgepotentialC3ip[c\[Theta]1,s\[Theta]1,R2,x-x2,y-y2,z],{0,0,0,0,0,0,0}],
     If[c4,Quiet@edgepotentialC4ip[c\[Theta]1,s\[Theta]1,R2,x-x2,y-y2,z],{0,0,0,0,0,0,0,0,0}],
     If[c5,Quiet@edgepotentialC5ip[c\[Theta]1,s\[Theta]1,R2,x-x2,y-y2,z],{0,0,0,0,0,0,0,0,0,0,0}]}]


EdgePotential[{{x1_,y1_},InfPoint[\[Theta]2_]}, {x_,y_,z_}, {c0_/;(c0\[Element]Booleans),c1_/;(c1\[Element]Booleans),c2_/;(c2\[Element]Booleans),c3_/;(c3\[Element]Booleans),c4_/;(c4\[Element]Booleans),c5_/;(c5\[Element]Booleans)}] :=
  Module[{R1,c\[Theta]2,s\[Theta]2},
    R1=Sqrt[(x-x1)^2+(y-y1)^2+z^2];
    c\[Theta]2=Cos[\[Theta]2]; s\[Theta]2=Sin[\[Theta]2];
    {If[c0,-Quiet@edgepotentialC0ip[c\[Theta]2,s\[Theta]2,R1,x-x1,y-y1,z],0],
     If[c1,-Quiet@edgepotentialC1ip[c\[Theta]2,s\[Theta]2,R1,x-x1,y-y1,z],{0,0,0}],
     If[c2,-Quiet@edgepotentialC2ip[c\[Theta]2,s\[Theta]2,R1,x-x1,y-y1,z],{0,0,0,0,0}],
     If[c3,-Quiet@edgepotentialC3ip[c\[Theta]2,s\[Theta]2,R1,x-x1,y-y1,z],{0,0,0,0,0,0,0}],
     If[c4,-Quiet@edgepotentialC4ip[c\[Theta]2,s\[Theta]2,R1,x-x1,y-y1,z],{0,0,0,0,0,0,0,0,0}],
     If[c5,-Quiet@edgepotentialC5ip[c\[Theta]2,s\[Theta]2,R1,x-x1,y-y1,z],{0,0,0,0,0,0,0,0,0,0,0}]}]


EdgePotential[{{x1_,y1_},{x2_,y2_}}, {x_,y_,z_}, {c0_/;(c0\[Element]Booleans),c1_/;(c1\[Element]Booleans),c2_/;(c2\[Element]Booleans),c3_/;(c3\[Element]Booleans),c4_/;(c4\[Element]Booleans),c5_/;(c5\[Element]Booleans)}] :=
  Module[{R1,R2,L2},
    R1=Sqrt[(x-x1)^2+(y-y1)^2+z^2];
    R2=Sqrt[(x-x2)^2+(y-y2)^2+z^2];
    L2=(x1-x2)^2+(y1-y2)^2;
    {If[c0,Quiet@edgepotentialC0pp[R1,R2,L2,x-x1,y-y1,x-x2,y-y2,z],0],
     If[c1,Quiet@edgepotentialC1pp[R1,R2,L2,x-x1,y-y1,x-x2,y-y2,z],{0,0,0}],
     If[c2,Quiet@edgepotentialC2pp[R1,R2,L2,x-x1,y-y1,x-x2,y-y2,z],{0,0,0,0,0}],
     If[c3,Quiet@edgepotentialC3pp[R1,R2,L2,x-x1,y-y1,x-x2,y-y2,z],{0,0,0,0,0,0,0}],
     If[c4,Quiet@edgepotentialC4pp[R1,R2,L2,x-x1,y-y1,x-x2,y-y2,z],{0,0,0,0,0,0,0,0,0}],
     If[c5,Quiet@edgepotentialC5pp[R1,R2,L2,x-x1,y-y1,x-x2,y-y2,z],{0,0,0,0,0,0,0,0,0,0,0}]}]


(* ::Text:: *)
(*build a polygon potential by summing over the edge potentials:*)


PolygonPotential[\[CapitalLambda]_/;VectorQ[\[CapitalLambda],MatchQ[#,InfPoint[_]]\[Or]MatchQ[#,{_,_}]&], {x_,y_,z_}, {c0_/;(c0\[Element]Booleans),c1_/;(c1\[Element]Booleans),c2_/;(c2\[Element]Booleans),c3_/;(c3\[Element]Booleans),c4_/;(c4\[Element]Booleans),c5_/;(c5\[Element]Booleans)}] :=
  Total[EdgePotential[#,{x,y,z},{c0,c1,c2,c3,c4,c5}]&/@({\[CapitalLambda],RotateLeft[\[CapitalLambda]]}\[Transpose])]


(* ::Text:: *)
(*compute the center and area of a pixel, for speeding up the calculation:*)


PixelCenterArea[PolygonPixel[\[CapitalLambda]_/;MatrixQ[\[CapitalLambda]]\[And]Length[\[CapitalLambda]\[Transpose]]==2]] := Module[{A,jx,jy,jz},
	{jx,jy,jz} = Total@MapThread[(A=(#1[[1]]^2+#1[[1]]#2[[1]]+#2[[1]]^2+#1[[2]]^2+#1[[2]]#2[[2]]+#2[[2]]^2)/2;
					{(#2[[2]]-#1[[2]]) A,(#1[[1]]-#2[[1]]) A,#1[[1]]#2[[2]]-#2[[1]]#1[[2]]})&,{\[CapitalLambda],RotateLeft[\[CapitalLambda]]}];
	{(2{jx,jy})/(3jz),jz/2}]
PixelCenterArea[PolygonPixel[\[CapitalLambda]_/;VectorQ[\[CapitalLambda],MatchQ[#,InfPoint[_]]\[Or]MatchQ[#,{_,_}]&]]] := {{0,0},\[Infinity]}  (* infinite area for infinite electrodes *)


SetAttributes[PolygonPixel,{Locked,ReadProtected}]
SetAttributes[EdgePotential,{Locked,ReadProtected}]
SetAttributes[PolygonPotential,{Locked,ReadProtected}]
SetAttributes[InfPoint,{Locked,ReadProtected}]
SetAttributes[edgepotentialstraighttol,{Locked,ReadProtected}]
SetAttributes[edgepotentialC0ii,{Locked,ReadProtected}]
SetAttributes[edgepotentialC0ip,{Locked,ReadProtected}]
SetAttributes[edgepotentialC0pp,{Locked,ReadProtected}]
SetAttributes[edgepotentialC1ii,{Locked,ReadProtected}]
SetAttributes[edgepotentialC1ip,{Locked,ReadProtected}]
SetAttributes[edgepotentialC1pp,{Locked,ReadProtected}]
SetAttributes[edgepotentialC2ii,{Locked,ReadProtected}]
SetAttributes[edgepotentialC2ip,{Locked,ReadProtected}]
SetAttributes[edgepotentialC2pp,{Locked,ReadProtected}]
SetAttributes[edgepotentialC3ii,{Locked,ReadProtected}]
SetAttributes[edgepotentialC3ip,{Locked,ReadProtected}]
SetAttributes[edgepotentialC3pp,{Locked,ReadProtected}]
SetAttributes[edgepotentialC4ii,{Locked,ReadProtected}]
SetAttributes[edgepotentialC4ip,{Locked,ReadProtected}]
SetAttributes[edgepotentialC4pp,{Locked,ReadProtected}]
SetAttributes[edgepotentialC5ii,{Locked,ReadProtected}]
SetAttributes[edgepotentialC5ip,{Locked,ReadProtected}]
SetAttributes[edgepotentialC5pp,{Locked,ReadProtected}]


(* ::Subsubsection::Closed:: *)
(*point pixels*)


(* ::Text:: *)
(*approximation for small pixels: (to be multiplied by pixel area)*)
(*only the derivatives specified in the boolean list (c0,c1,c2,c3) are actually calculated*)


pointpotentialC0 = Compile[{x,y,z,R},
  z/(2*Pi*R^3)]
pointpotentialC1 = Compile[{x,y,z,R},
  {-3*x*z,
   -3*y*z,
   R^2-3*z^2}/(2*Pi*R^5)]
pointpotentialC2 = Compile[{x,y,z,R},
  {-((R^2-5*x^2)*z),
   5*x*y*z,
   -(x*(R^2-5*z^2)),
   -((R^2-5*y^2)*z),
   -(y*(R^2-5*z^2))}*3/(2*Pi*R^7)]
pointpotentialC3 = Compile[{x,y,z,R},
  {5*(R^2-7*x^2)*y*z,
   4*x^4-y^4+3*y^2*z^2+4*z^4+3*x^2*(y^2-9*z^2),
   -x^4+4*y^4-27*y^2*z^2+4*z^4+3*x^2*(y^2+z^2),
   5*x*(R^2-7*y^2)*z,
   5*x*z*(3*(x^2+y^2)-4*z^2),
   5*y*z*(3*(x^2+y^2)-4*z^2),
   5*x*y*(R^2-7*z^2)}*3/(2*Pi*R^9)]
pointpotentialC4 = Compile[{x,y,z,R},
  {-21*x*(R^2-3*x^2)*y*z,
   -(x*(4*x^4+x^2*(y^2-41*z^2)-3*(y^2-6*z^2)*(y^2+z^2))),
   z*(-6*x^4+51*x^2*y^2-6*y^4-5*(x^2+y^2)*z^2+z^4),
   -(z*(18*x^4-3*y^4+y^2*z^2+4*z^4+x^2*(15*y^2-41*z^2))),
   -21*x*y*(R^2-3*y^2)*z,
   3*x*((x^2+y^2)^2-12*(x^2+y^2)*z^2+8*z^4),
   -(y*(-3*x^4+4*y^4-41*y^2*z^2+18*z^4+x^2*(y^2+15*z^2))),
   3*(x^2-6*y^2)*(x^2+y^2)*z-(x^2-41*y^2)*z^3-4*z^5,
   3*y*((x^2+y^2)^2-12*(x^2+y^2)*z^2+8*z^4)}*15/(2*Pi*R^11)]
pointpotentialC5 = Compile[{x,y,z,R},
  {7*x*z*(2*x^4+8*y^4+7*y^2*z^2-z^4+x^2*(-23*y^2+z^2)),
   7*x*y*(2*x^4-y^4+7*y^2*z^2+8*z^4+x^2*(y^2-23*z^2)),
   21*x*z*(2*x^4-y^4+y^2*z^2+2*z^4+x^2*(y^2-7*z^2)),
   7*y*z*(8*x^4-23*x^2*y^2+2*y^4+(7*x^2+y^2)*z^2-z^4),
   -2*x^6-2*y^6+15*y^4*z^2+15*y^2*z^4-2*z^6+15*x^4*(y^2+z^2)+15*x^2*(y^4-12*y^2*z^2+z^4),
   7*y*z*(8*x^4-y^4+y^2*z^2+2*z^4+x^2*(7*y^2-23*z^2)),
   -((6*x^2-y^2)*(x^2+y^2)^2)+(101*x^2-11*y^2)*(x^2+y^2)*z^2-4*(29*x^2+y^2)*z^4+8*z^6,
   -7*x*y*(x^4-2*y^4+23*y^2*z^2-8*z^4-x^2*(y^2+7*z^2)),
   -7*x*z*(x^4-8*y^4+23*y^2*z^2-2*z^4-x^2*(7*y^2+z^2)),
   21*y*z*(-x^4+2*y^4-7*y^2*z^2+2*z^4+x^2*(y^2+z^2)),
   (x^2-6*y^2)*(x^2+y^2)^2+(-11*x^4+90*x^2*y^2+101*y^4)*z^2-4*(x^2+29*y^2)*z^4+8*z^6}*45/(2*Pi*R^13)]


PointPotential[{x_,y_,z_}, a_, {c0_/;(c0\[Element]Booleans),c1_/;(c1\[Element]Booleans),c2_/;(c2\[Element]Booleans),c3_/;(c3\[Element]Booleans),c4_/;(c4\[Element]Booleans),c5_/;(c5\[Element]Booleans)}] :=
  Module[{R},
    R = Sqrt[x^2+y^2+z^2];
    {If[c0,a*Quiet@pointpotentialC0[x,y,z,R],0],
     If[c1,a*Quiet@pointpotentialC1[x,y,z,R],{0,0,0}],
     If[c2,a*Quiet@pointpotentialC2[x,y,z,R],{0,0,0,0,0}],
     If[c3,a*Quiet@pointpotentialC3[x,y,z,R],{0,0,0,0,0,0,0}],
     If[c4,a*Quiet@pointpotentialC4[x,y,z,R],{0,0,0,0,0,0,0,0,0}],
     If[c5,a*Quiet@pointpotentialC5[x,y,z,R],{0,0,0,0,0,0,0,0,0,0,0}]}]


(* ::Text:: *)
(*compute the center and area of a pixel, for speeding up the calculation:*)


PixelCenterArea[PointPixel[{X_,Y_},a_]] := {{X,Y},a}


SetAttributes[PointPixel,{Locked,ReadProtected}]
SetAttributes[pointpotentialC0,{Locked,ReadProtected}]
SetAttributes[pointpotentialC1,{Locked,ReadProtected}]
SetAttributes[pointpotentialC2,{Locked,ReadProtected}]
SetAttributes[pointpotentialC3,{Locked,ReadProtected}]
SetAttributes[pointpotentialC4,{Locked,ReadProtected}]
SetAttributes[pointpotentialC5,{Locked,ReadProtected}]
SetAttributes[PointPotential,{Locked,ReadProtected}]


(* ::Subsubsection::Closed:: *)
(*disc pixels*)


(* ::Text:: *)
(*disc-shaped pixel*)
(*only the derivatives specified in the boolean list (c0,c1,c2,c3,c4,c5) are actually calculated*)


discpotentialC0 = Compile[{R,x,y,z,r,ePi,eK},
  (ePi*(r-R)/(r+R)-eK)*z/(Pi*Sqrt[(r+R)^2+z^2]) + Piecewise[{{1,r<R},{1/2,r==R}},0]]
discpotentialC1 = Compile[{R,x,y,z,r,eE,eK},
  ({x*z,y*z,-r^2}eK+{-(x*z*(r^2+R^2+z^2)),-(y*z*(r^2+R^2+z^2)),r^2*(r^2-R^2+z^2)}eE/((r-R)^2+z^2))/(Pi*r^2*Sqrt[(r+R)^2+z^2])]
discpotentialC2 = Compile[{R,x,y,z,r,eE,eK},
  ({z*(R^6*(x^2-y^2)+R^4*(-8*x^4-7*x^2*y^2+y^4+3*(x^2-y^2)*z^2)+R^2*(r^4*(5*x^2+y^2)-2*(2*x^4+3*x^2*y^2+y^4)*z^2+3*(x^2-y^2)*z^4)+
  (r^2+z^2)^2*(2*x^4+x^2*(y^2+z^2)-y^2*(y^2+z^2))),x*y*z*(3*r^6+2*(R^2+z^2)^3+4*r^4*(R^2+2*z^2)+r^2*(-9*R^4-2*R^2*z^2+7*z^4)),
  r^2*x*(-((r^2-R^2)^2*(r^2+R^2))-2*(r^4-6*r^2*R^2+R^4)*z^2-(r^2+R^2)*z^4),
  z*(R^6*(-x^2+y^2)+R^2*(r^4*(x^2+5*y^2)-2*(x^4+3*x^2*y^2+2*y^4)*z^2+3*(-x^2+y^2)*z^4)-
  (r^2+z^2)^2*(x^4+x^2*(-y^2+z^2)-y^2*(2*y^2+z^2))+R^4*(x^4-8*y^4+3*y^2*z^2-x^2*(7*y^2+3*z^2))),
  r^2*y*(-((r^2-R^2)^2*(r^2+R^2))-2*(r^4-6*r^2*R^2+R^4)*z^2-(r^2+R^2)*z^4)}eE/((r-R)^2+z^2)+
  {-(z*(-2*R^4*y^2+r^4*(y^2+z^2)+R^2*(-3*x^4+3*y^4-4*y^2*z^2)-2*z^2*(-x^4+y^4+y^2*z^2)+r^2*(2*x^4+(R^2-2*y^2+z^2)*(R^2+y^2+z^2)))),
  -(x*y*z*(3*r^4+5*r^2*(-R^2+z^2)+2*(R^2+z^2)^2)),r^2*x*((r^2-R^2)^2+(r^2+R^2)*z^2),
  z*(-2*R^2*(x^4+(R-y)*y^2*(R+y))+(x^4-y^2*(4*R^2+y^2))*z^2-2*y^2*z^4+r^4*(-y^2+z^2)+
  r^2*(R^4+x^4-y^4-3*y^2*z^2+z^4+R^2*(y^2+2*z^2))),r^2*y*((r^2-R^2)^2+(r^2+R^2)*z^2)}eK)/(Pi*r^4*((r-R)^2+z^2)*((r+R)^2+z^2)^(3/2))]
discpotentialC3 = Compile[{R,x,y,z,r,eE,eK},
  ({-(y*z*(R^10*(6*x^2-2*y^2)+R^2*(r^2+z^2)*(2*r^6*(15*x^2+y^2)+r^4*(-83*x^2+2*y^2)*z^2+r^2*(33*x^2-10*y^2)*z^4+10*(3*x^2-y^2)*z^6)+
  (r^2+z^2)^3*(3*r^4*(4*x^2-y^2)+(3*x^2-y^2)*z^2*(5*(x^2+y^2)+2*z^2))+R^8*(-36*x^4+13*y^4-10*y^2*z^2+x^2*(-23*y^2+30*z^2))+
  R^6*(12*r^4*(9*x^2-2*y^2)+z^2*(-75*x^4-47*x^2*y^2+28*y^4+20*(3*x^2-y^2)*z^2))-
  R^4*(2*r^6*(60*x^2-7*y^2)+r^4*(17*x^2+8*y^2)*z^2+z^4*(9*x^4-6*y^4+20*y^2*z^2+3*x^2*(y^2-20*z^2))))),
  r^2*(R^10*(x^2-y^2)+r^4*(2*x^2-y^2-z^2)*(r^2+z^2)^3+R^8*(-10*x^4-7*x^2*y^2+3*y^4+4*(x^2-y^2)*z^2)+
  R^6*(r^4*(22*x^2-2*y^2)+r^2*(7*x^2+16*y^2)*z^2+6*(x^2-y^2)*z^4)+
  R^2*(r^2+z^2)*(r^6*(x^2+3*y^2)+r^4*(-92*x^2+13*y^2)*z^2+3*r^2*(8*x^2+3*y^2)*z^4+(x^2-y^2)*z^6)+
  R^4*(-2*r^6*(8*x^2+y^2)+3*r^4*(25*x^2-8*y^2)*z^2+r^2*(43*x^2+22*y^2)*z^4+4*(x^2-y^2)*z^6)),
  (-x^2-y^2)*(R^10*(x^2-y^2)+r^4*(r^2+z^2)^3*(x^2-2*y^2+z^2)+R^8*(-3*x^4+7*x^2*y^2+10*y^4+4*(x^2-y^2)*z^2)+
  R^6*(2*r^4*(x^2-11*y^2)-r^2*(16*x^2+7*y^2)*z^2+6*(x^2-y^2)*z^4)+
  R^4*(2*r^6*(x^2+8*y^2)+3*r^4*(8*x^2-25*y^2)*z^2-r^2*(22*x^2+43*y^2)*z^4+4*(x^2-y^2)*z^6)-
  R^2*(r^2+z^2)*(r^6*(3*x^2+y^2)+r^4*(13*x^2-92*y^2)*z^2+3*r^2*(3*x^2+8*y^2)*z^4+(-x^2+y^2)*z^6)),
  x*z*(2*R^10*(x^2-3*y^2)+R^8*(-13*x^4+23*x^2*y^2+36*y^4+10*(x^2-3*y^2)*z^2)+
  (r^2+z^2)^3*(3*r^4*(x^2-4*y^2)+5*r^2*(x^2-3*y^2)*z^2+2*(x^2-3*y^2)*z^4)-
  R^2*(r^2+z^2)*(2*r^6*(x^2+15*y^2)+r^4*(2*x^2-83*y^2)*z^2+r^2*(-10*x^2+33*y^2)*z^4-10*(x^2-3*y^2)*z^6)+
  R^4*(2*r^6*(-7*x^2+60*y^2)+r^4*(8*x^2+17*y^2)*z^2+3*(-2*x^4+x^2*y^2+3*y^4)*z^4+20*(x^2-3*y^2)*z^6)+
  R^6*(12*r^4*(2*x^2-9*y^2)+z^2*(-28*x^4+47*x^2*y^2+75*y^4+20*(x^2-3*y^2)*z^2))),
  r^4*x*z*(3*r^8+3*R^2*(R^2+z^2)^3+9*r^6*(4*R^2+z^2)+r^2*(R^2+z^2)*(36*R^4-77*R^2*z^2+3*z^4)+r^4*(-78*R^4-41*R^2*z^2+9*z^4)),
  r^4*y*z*(3*r^8+3*R^2*(R^2+z^2)^3+9*r^6*(4*R^2+z^2)+r^2*(R^2+z^2)*(36*R^4-77*R^2*z^2+3*z^4)+r^4*(-78*R^4-41*R^2*z^2+9*z^4)),
  r^2*x*y*(3*r^10-r^2*R^2*(13*R^2-17*z^2)*(R^2+z^2)^2+2*R^2*(R^2+z^2)^4+r^8*(-2*R^2+9*z^2)+r^6*(-14*R^4-107*R^2*z^2+9*z^4)+
  3*r^4*(8*R^6+33*R^4*z^2-30*R^2*z^4+z^6))}eE+{y*z*((r+R)^2+z^2)^4*(R^8*(6*x^2-2*y^2)+(r^2+z^2)^2*(3*r^4*(4*x^2-y^2)+(3*x^2-y^2)*z^2*(5*(x^2+y^2)+2*z^2))+
  R^6*(-24*x^4+9*y^4-8*y^2*z^2+3*x^2*(-5*y^2+8*z^2))+3*R^4*(r^4*(14*x^2-5*y^2)+z^2*(-7*x^4+3*y^4-4*y^2*z^2-4*x^2*(y^2-3*z^2)))+
  R^2*(r^6*(-36*x^2+11*y^2)+10*r^4*(-5*x^2+y^2)*z^2+z^4*(30*x^4-9*y^4-8*y^2*z^2+3*x^2*(7*y^2+8*z^2)))),
  -(r^2*((r+R)^2+z^2)^4*(R^8*(x^2-y^2)+r^4*(2*x^2-y^2-z^2)*(r^2+z^2)^2+
  R^2*(r^6*(-7*x^2+4*y^2)+3*r^4*(-5*x^2+y^2)*z^2+r^2*(13*x^2-2*y^2)*z^4+(x^2-y^2)*z^6)-R^6*(5*x^4-4*y^4+3*y^2*z^2+x^2*(y^2-3*z^2))+
  3*R^4*(r^4*(3*x^2-2*y^2)+z^2*(3*x^4+y^4-y^2*z^2+x^2*(4*y^2+z^2))))),
  r^2*((r+R)^2+z^2)^4*(R^8*(x^2-y^2)+r^4*(r^2+z^2)^2*(x^2-2*y^2+z^2)+
  3*R^4*(r^4*(2*x^2-3*y^2)-(x^4+4*x^2*y^2+3*y^4)*z^2+(x^2-y^2)*z^4)+
  R^2*(r^6*(-4*x^2+7*y^2)-3*r^4*(x^2-5*y^2)*z^2+r^2*(2*x^2-13*y^2)*z^4+(x^2-y^2)*z^6)+R^6*(-4*x^4+5*y^4-3*y^2*z^2+x^2*(y^2+3*z^2))),
  -(x*z*((r+R)^2+z^2)^4*(2*R^8*(x^2-3*y^2)+(r^2+z^2)^2*(3*r^4*(x^2-4*y^2)+5*r^2*(x^2-3*y^2)*z^2+2*(x^2-3*y^2)*z^4)+
  R^2*(r^6*(-11*x^2+36*y^2)-10*r^4*(x^2-5*y^2)*z^2+3*r^2*(3*x^2-10*y^2)*z^4+8*(x^2-3*y^2)*z^6)+
  R^6*(-9*x^4+x^2*(15*y^2+8*z^2)+24*(y^4-y^2*z^2))+3*R^4*(r^4*(5*x^2-14*y^2)+z^2*(-3*x^4+7*y^4-12*y^2*z^2+4*x^2*(y^2+z^2))))),
  -(r^4*x*z*((r+R)^2+z^2)^4*(3*(r^2-R^2)^2*(r^2+R^2)+2*(3*r^4-10*r^2*R^2+3*R^4)*z^2+3*(r^2+R^2)*z^4)),
  -(r^4*y*z*((r+R)^2+z^2)^4*(3*(r^2-R^2)^2*(r^2+R^2)+2*(3*r^4-10*r^2*R^2+3*R^4)*z^2+3*(r^2+R^2)*z^4)),
  -(r^2*x*y*((r+R)^2+z^2)^4*((-3*r^2+2*R^2)*(R^2-x^2-y^2)^3+6*(r^6-3*r^4*R^2+r^2*R^4+R^6)*z^2
  +3*(r^4+5*r^2*R^2+2*R^4)*z^4+2*R^2*z^6))}eK*((r-R)^2+z^2)/((r+R)^2+z^2)^4)/(Pi*r^6*((r-R)^2+z^2)^3*((r+R)^2+z^2)^(5/2))]
discpotentialC4 = Compile[{R,x,y,z,r,eE,eK},
  {(x*y*z*(-(eK*((r-R)^2+z^2)*(60*r^14-15*r^12*(17*R^2+7*y^2-19*z^2)-48*y^2*(R^2+z^2)^6+r^10*(6*R^2*(79*R^2+3*x^2+81*y^2)-25*(37*R^2+21*y^2)*z^2+579*z^4)+r^8*(-6*R^4*(86*R^2+9*(x^2+18*y^2))+R^2*(699*R^2-26*x^2+1597*y^2)*z^2-3*(218*R^2+371*y^2)*z^4+651*z^6)+24*r^2*(R^2+z^2)^4*(R^4-13*y^2*z^2+z^4+2*R^2*(6*y^2+z^2))-r^4*(R^2+z^2)^2*(141*R^6+78*z^4*(11*y^2-2*z^2)+9*R^4*(2*x^2+83*y^2+14*z^2)-R^2*z^2*(26*x^2+1049*y^2+171*z^2))+r^6*(354*R^8+R^4*z^2*(36*x^2-1179*y^2-223*z^2)+429*z^6*(-3*y^2+z^2)+R^6*(54*x^2+1098*y^2+205*z^2)+R^2*z^4*(-18*x^2+1116*y^2+355*z^2))))+eE*(60*r^16-3*r^14*(23*R^2+35*y^2-115*z^2)-48*y^2*(R^2+z^2)^7+2*r^8*(-99*R^6*(5*R^2-6*x^2+11*y^2)+R^4*(101*R^2-506*x^2+184*y^2)*z^2+R^2*(19*R^2-484*x^2+905*y^2)*z^4-(37*R^2+1200*y^2)*z^6+540*z^8)+r^12*(-321*R^4-630*y^2*z^2+864*z^4+R^2*(342*x^2+75*y^2-701*z^2))+2*r^10*(447*R^6-819*y^2*z^4+615*z^6+R^2*z^2*(34*x^2+502*y^2-569*z^2)+R^4*(-540*x^2+423*y^2-121*z^2))+24*r^2*(R^2+z^2)^5*(R^4-15*y^2*z^2+z^4+2*R^2*(8*y^2+z^2))-3*r^4*(R^2+z^2)^3*(63*R^6+390*y^2*z^4-60*z^6+R^2*z^2*(26*x^2-571*y^2-57*z^2)+R^4*(-18*x^2+435*y^2+66*z^2))+r^6*(R^2+z^2)*(591*R^8-2145*y^2*z^6+585*z^8+R^4*z^2*(1364*x^2-2095*y^2-384*z^2)+R^2*z^4*(-772*x^2+2309*y^2+390*z^2)+R^6*(-504*x^2+2331*y^2+402*z^2)))))/(Pi*r^8*((r-R)^2+z^2)^4*((r+R)^2+z^2)^(7/2)),
   -((x*(-(eK*((r-R)^2+z^2)*(6*r^14-8*R^2*y^2*(R^2+z^2)^5+r^12*(-26*R^2-15*y^2+9*z^2)-r^4*R^2*(R^2+z^2)*(10*R^6+131*R^4*y^2+R^2*(13*R^2+36*x^2-275*y^2)*z^2-2*(2*R^2+26*x^2-107*y^2)*z^4-7*z^6)-r^8*(44*R^6+45*y^2*z^4+21*z^6+2*R^4*(83*y^2-127*z^2)+R^2*z^2*(36*x^2-280*y^2-33*z^2))+r^2*R^2*(R^2+z^2)^3*(2*R^4-64*y^2*z^2+2*z^4+R^2*(49*y^2+4*z^2))+r^6*(26*R^8+2*R^6*(97*y^2-54*z^2)-3*z^6*(5*y^2+3*z^2)+R^4*z^2*(72*x^2-422*y^2+29*z^2)+R^2*z^4*(16*x^2+45*y^2+154*z^2))+r^10*(46*R^4+R^2*(77*y^2-142*z^2)-9*(5*y^2*z^2+z^4))))+eE*(6*r^16-8*R^2*y^2*(R^2+z^2)^6+r^12*(-10*R^4-60*y^2*z^2+R^2*(36*x^2+38*y^2-291*z^2))+r^14*(-14*R^2+15*(-y^2+z^2))+r^2*R^2*(R^2+z^2)^4*(2*R^4-72*y^2*z^2+2*z^4+R^2*(65*y^2+4*z^2))-r^4*R^2*(R^2+z^2)^2*(14*R^6-4*R^2*z^2*(-4*(30*x^2+y^2)+z^2)-z^4*(364*x^2+34*y^2+9*z^2)+R^4*(-36*x^2+202*y^2+19*z^2))+r^6*(46*R^10+4*R^6*z^2*(102*x^2+252*y^2-13*z^2)-3*z^8*(5*y^2+3*z^2)-3*R^8*(48*x^2-101*y^2+7*z^2)+2*R^2*z^6*(124*x^2+418*y^2+55*z^2)+2*R^4*z^4*(752*x^2-718*y^2+67*z^2))+r^10*(62*R^6-2*R^2*z^2*(204*x^2-330*y^2+221*z^2)+R^4*(-144*x^2+31*y^2+458*z^2)-30*(3*y^2*z^4+z^6))-2*r^8*(39*R^8+R^2*z^4*(280*x^2-680*y^2+31*z^2)+R^6*(-108*x^2+106*y^2+63*z^2)-4*R^4*z^2*(51*x^2-166*y^2+112*z^2)+15*(2*y^2*z^6+z^8)))))/(Pi*r^6*((r-R)^2+z^2)^4*((r+R)^2+z^2)^(7/2))),
   (z*(eK*((r-R)^2+z^2)*(12*r^16-48*x^2*y^2*(R^2+z^2)^6+r^14*(19*R^2+63*z^2)+12*r^2*y^2*(R^2+z^2)^4*(R^2*(25*x^2+y^2)-26*x^2*z^2)-r^12*(48*R^4+R^2*(79*x^2+111*y^2-48*z^2)+3*(35*x^2*y^2-46*z^4))+r^10*(62*R^6-525*x^2*y^2*z^2+162*z^6+2*R^4*(87*x^2+141*y^2-11*z^2)+2*R^2*(16*y^4-90*y^2*z^2+13*z^4+2*x^2*(125*y^2-56*z^2)))+r^4*(R^2+z^2)^2*(6*R^8-858*x^2*y^2*z^4+6*z^8-3*R^6*(17*x^2+21*y^2-8*z^2)-R^4*(68*y^4+74*y^2*z^2-36*z^4+x^2*(797*y^2+50*z^2))+R^2*z^2*(44*y^4+41*y^2*z^2+24*z^4+x^2*(1067*y^2+53*z^2)))+r^6*(15*R^10+R^8*(139*x^2+207*y^2+47*z^2)+39*z^6*(-33*x^2*y^2+z^4)+2*R^6*(66*y^4+94*y^2*z^2+19*z^4+12*x^2*(49*y^2+4*z^2))+R^2*z^4*(-44*y^4+60*y^2*z^2+67*z^4+2*x^2*(545*y^2+52*z^2))+R^4*z^2*(88*y^4-102*y^2*z^2+34*z^4-x^2*(1127*y^2+82*z^2)))+r^8*(-43*R^8-1113*x^2*y^2*z^4+108*z^8-2*R^6*(103*x^2+169*y^2+22*z^2)+2*R^4*(-54*y^4+32*y^2*z^2+3*z^4+x^2*(-513*y^2+76*z^2))-R^2*z^2*(44*y^4+106*y^2*z^2+28*z^4+x^2*(-1579*y^2+150*z^2))))+eE*(-12*r^18+48*x^2*y^2*(R^2+z^2)^7-r^16*(38*R^2+75*z^2)+4*r^2*y^2*(R^2+z^2)^5*(R^2*(-91*x^2+5*y^2)+90*x^2*z^2)+r^14*(119*R^4+4*R^2*(8*x^2+79*y^2-20*z^2)+3*(35*x^2*y^2-67*z^4))+r^8*(-2*R^10+R^8*(291*x^2-389*y^2-8*z^2)+3*z^6*(800*x^2*y^2-49*z^4)-R^2*z^4*(1974*x^2*y^2-804*y^4+78*(x^2+11*y^2)*z^2+53*z^4)+2*R^6*(-604*y^4+289*y^2*z^2+18*z^4+13*x^2*(83*y^2+3*z^2))+4*R^4*z^2*(207*y^4+116*y^2*z^2+34*z^4+2*x^2*(-69*y^2+8*z^2)))+r^10*(81*R^8+8*R^6*(-28*x^2+123*y^2+5*z^2)+18*z^4*(91*x^2*y^2-15*z^4)-2*R^4*(-482*y^4+421*y^2*z^2-9*z^4+x^2*(481*y^2+7*z^2))+4*R^2*z^2*(-24*y^4-154*y^2*z^2+36*z^4+x^2*(-258*y^2+47*z^2)))-r^6*(R^2+z^2)*(11*R^10-2145*x^2*y^2*z^6+45*z^10+R^8*(184*x^2+12*y^2+29*z^2)+R^6*(-680*y^4-45*y^2*z^2+6*z^4+5*x^2*(431*y^2+23*z^2))+R^4*z^2*(1180*y^4+69*y^2*z^2+14*z^4-x^2*(2279*y^2+127*z^2))+R^2*z^4*(-780*y^4+321*y^2*z^2+71*z^4+x^2*(2301*y^2+137*z^2)))+r^12*(-154*R^6+630*x^2*y^2*z^2-300*z^6+R^4*(49*x^2-915*y^2+54*z^2)+R^2*(-284*y^4+247*y^2*z^2+10*z^4+x^2*(-17*y^2+151*z^2)))-r^4*(R^2+z^2)^3*(6*R^8+R^6*(-59*x^2-39*y^2+24*z^2)+6*z^4*(-195*x^2*y^2+z^4)+R^2*z^2*(-184*y^4+81*y^2*z^2+24*z^4+x^2*(1607*y^2+61*z^2))+R^4*(-(x^2*(1187*y^2+58*z^2))+2*(86*y^4-9*y^2*z^2+18*z^4))))))/(Pi*r^8*((r-R)^2+z^2)^4*((r+R)^2+z^2)^(7/2)),
   (z*(eE*(3*r^14-15*r^12*(6*R^2+x^2-z^2)-6*R^2*x^2*(R^2+z^2)^5+r^2*R^2*(R^2+z^2)^3*(3*R^4-3*R^2*(x^2+24*y^2-2*z^2)+z^2*(41*x^2+116*y^2+3*z^2))+r^4*(R^2+z^2)*(102*R^8+R^4*z^2*(-937*x^2+716*y^2-269*z^2)+R^2*z^4*(607*x^2-164*y^2-181*z^2)+3*z^6*(-5*x^2+z^2)+R^6*(249*x^2+96*y^2+17*z^2))-r^6*(243*R^8+60*x^2*z^6-15*z^8+2*R^2*z^4*(-439*x^2+278*y^2+5*z^2)+6*R^6*(109*x^2-24*y^2+141*z^2)+4*R^4*z^2*(-143*x^2+139*y^2+157*z^2))+r^10*(141*R^4+30*z^2*(-2*x^2+z^2)+R^2*(-159*x^2+120*y^2+175*z^2))+2*r^8*(42*R^6+15*z^4*(-3*x^2+z^2)+3*R^4*(98*x^2-48*y^2+87*z^2)+R^2*z^2*(87*x^2-78*y^2+218*z^2)))-eK*((r-R)^2+z^2)*(3*r^12-3*r^10*(7*R^2+5*x^2-4*z^2)-6*R^2*x^2*(R^2+z^2)^4+r^6*(-6*R^4*(5*R^2-7*x^2+6*y^2)+R^2*(-16*R^2+211*x^2-68*y^2)*z^2+5*(2*R^2-9*x^2)*z^4+12*z^6)+3*r^2*R^2*(R^2+z^2)^2*(R^4+z^2*(-11*x^2+12*y^2+z^2)+R^2*(15*x^2-4*y^2+2*z^2))+3*r^8*(14*R^4-15*x^2*z^2+6*z^4+2*R^2*(3*x^2+2*y^2+6*z^2))+r^4*(3*R^8+R^4*z^2*(-199*x^2+56*y^2-94*z^2)+3*z^6*(-5*x^2+z^2)-4*R^6*(21*x^2-9*y^2+11*z^2)+2*R^2*z^4*(83*x^2-22*(y^2+z^2))))))/(Pi*r^4*((r-R)^2+z^2)^4*((r+R)^2+z^2)^(7/2)),
   (-3*x*y*z*(eE*(15*r^16-16*y^2*(R^2+z^2)^7+r^14*(-2*R^2-35*y^2+95*z^2)+8*r^2*(R^2+z^2)^5*(R^4-15*y^2*z^2+z^4+2*R^2*(8*y^2+z^2))-r^12*(175*R^4+6*z^2*(35*y^2-43*z^2)+R^2*(89*y^2+101*z^2))+r^10*(428*R^6+6*R^4*(107*y^2-7*z^2)+78*z^4*(-7*y^2+5*z^2)+8*R^2*(39*y^2*z^2-28*z^4))-r^4*(R^2+z^2)^3*(65*R^6+390*y^2*z^4-60*z^6+R^4*(453*y^2+70*z^2)-R^2*(597*y^2*z^2+55*z^4))+r^6*(R^2+z^2)*(238*R^8-715*y^2*z^6+195*z^8+15*R^6*(63*y^2+11*z^2)-R^4*(1153*y^2*z^2+189*z^4)+79*R^2*(13*y^2*z^4+z^6))-r^8*(447*R^8+800*y^2*z^6-355*z^8+2*R^6*(561*y^2+73*z^2)+R^4*(-460*y^2*z^2+84*z^4)+R^2*(-926*y^2*z^4+30*z^6)))-eK*((r-R)^2+z^2)*(15*r^14-16*y^2*(R^2+z^2)^6+r^12*(-77*R^2-35*y^2+80*z^2)+r^8*(-2*R^4*(97*R^2+153*y^2)+R^2*(160*R^2+541*y^2)*z^2-7*(22*R^2+53*y^2)*z^4+212*z^6)+r^10*(166*R^4-175*y^2*z^2+178*z^4+4*R^2*(39*y^2-56*z^2))+8*r^2*(R^2+z^2)^4*(R^4-13*y^2*z^2+z^4+2*R^2*(6*y^2+z^2))-r^4*(R^2+z^2)^2*(49*R^6+286*y^2*z^4-52*z^6+R^4*(243*y^2+46*z^2)-11*R^2*(31*y^2*z^2+5*z^4))+r^6*(131*R^8+143*z^6*(-3*y^2+z^2)+4*R^6*(87*y^2+20*z^2)-45*R^4*(9*y^2*z^2+2*z^4)+2*R^2*(189*y^2*z^4+52*z^6)))))/(Pi*r^8*((r-R)^2+z^2)^4*((r+R)^2+z^2)^(7/2)),
   (3*x*(-(eK*((r-R)^2+z^2)*((r^2-R^2)^4*(r^2+R^2)-(r^2-R^2)^2*(r^4+46*r^2*R^2+R^4)*z^2+(-9*r^6+25*r^4*R^2+25*r^2*R^4-9*R^6)*z^4+(-11*r^4+62*r^2*R^2-11*R^4)*z^6-4*(r^2+R^2)*z^8))+eE*((r^2-R^2)^4*(r^4+14*r^2*R^2+R^4)-192*R^2*(r^2+R^2)*(r^3-r*R^2)^2*z^2-2*(5*r^8+116*r^6*R^2-370*r^4*R^4+116*r^2*R^6+5*R^8)*z^4-4*(r^2+R^2)*(5*r^4-42*r^2*R^2+5*R^4)*z^6-3*(5*r^4-58*r^2*R^2+5*R^4)*z^8-4*(r^2+R^2)*z^10)))/(Pi*r^2*((r-R)^2+z^2)^4*((r+R)^2+z^2)^(7/2)),
   (y*(-(eK*((r-R)^2+z^2)*((r-R)^4*(r+R)^4*(9*r^6-8*R^4*y^2-15*r^4*(R^2+y^2)+r^2*(6*R^4+17*R^2*y^2))+(r-R)^2*(r+R)^2*(6*r^2*(6*r^6-11*r^4*R^2+5*R^6)+(-45*r^6+226*r^4*R^2+3*r^2*R^4-40*R^6)*y^2)*z^2+(6*r^2*(9*r^8-13*r^6*R^2-15*r^4*R^4+9*r^2*R^6+10*R^8)+(-45*r^8+29*r^6*R^2+45*r^4*R^4-45*r^2*R^6-80*R^8)*y^2)*z^4+(12*r^2*(3*r^6+5*r^4*R^2+11*r^2*R^4+5*R^6)-(15*r^6+266*r^4*R^2+143*r^2*R^4+80*R^6)*y^2)*z^6+(9*r^6+57*r^4*R^2-40*R^4*y^2+r^2*(30*R^4-64*R^2*y^2))*z^8+2*R^2*(3*r^2-4*y^2)*z^10))+eE*(9*r^16-8*R^2*y^2*(R^2+z^2)^6+r^2*R^2*(R^2+z^2)^4*(6*R^4+65*R^2*y^2+12*(R^2-6*y^2)*z^2+6*z^4)+r^10*(25*R^4*(6*R^2+7*y^2)+6*R^2*(145*R^2+178*y^2)*z^2-18*(51*R^2+5*y^2)*z^4+90*z^6)-r^8*(225*R^8+428*R^6*y^2+14*R^4*(63*R^2+124*y^2)*z^2-60*R^2*(9*R^2+32*y^2)*z^4+6*(129*R^2+10*y^2)*z^6-45*z^8)+r^12*(-21*R^4-60*y^2*z^2+90*z^4+R^2*(2*y^2-369*z^2))-3*r^14*(8*R^2+5*(y^2-3*z^2))-r^4*R^2*(R^2+z^2)^2*(51*R^6+330*y^2*z^4-63*z^6+R^4*(238*y^2+39*z^2)-R^2*(464*y^2*z^2+75*z^4))+3*r^6*(52*R^10-5*y^2*z^8+3*z^10+R^8*(149*y^2+147*z^2)+4*R^6*(50*y^2*z^2+21*z^4)-2*R^4*(490*y^2*z^4+31*z^6)+4*R^2*(49*y^2*z^6-12*z^8)))))/(Pi*r^6*((r-R)^2+z^2)^4*((r+R)^2+z^2)^(7/2)),
   (z*(eE*(3*r^14-6*R^2*y^2*(R^2+z^2)^5+15*r^12*(2*R^2-y^2+z^2)+3*r^2*R^2*(R^2+z^2)^3*(R^4-25*y^2*z^2+z^4+R^2*(23*y^2+2*z^2))+r^10*(-147*R^4+30*z^2*(-2*y^2+z^2)+R^2*(-279*y^2+19*z^2))+2*r^8*(114*R^6+R^4*(438*y^2-17*z^2)+15*z^4*(-3*y^2+z^2)+15*R^2*(11*y^2*z^2-4*z^4))-r^6*(147*R^8+60*y^2*z^6-15*z^8+6*R^2*z^4*(-239*y^2+29*z^2)+R^6*(798*y^2+34*z^2)+R^4*(-1128*y^2*z^2+76*z^4))+r^4*(R^2+z^2)*(30*R^8+R^6*(153*y^2-11*z^2)+3*z^6*(-5*y^2+z^2)-R^4*(1653*y^2*z^2+109*z^4)+R^2*(771*y^2*z^4-65*z^6)))-eK*((r-R)^2+z^2)*(3*r^12-3*r^10*(3*R^2+5*y^2-4*z^2)-6*R^2*y^2*(R^2+z^2)^4+r^8*(6*R^2*(R^2+y^2)-(32*R^2+45*y^2)*z^2+18*z^4)+3*r^2*R^2*(R^2+z^2)^2*(R^4-23*y^2*z^2+z^4+R^2*(19*y^2+2*z^2))+r^6*(6*R^6-45*y^2*z^4+12*z^6+R^4*(78*y^2+40*z^2)+R^2*(279*y^2*z^2-34*z^4))-r^4*(9*R^8+15*y^2*z^6-3*z^8+8*R^6*(15*y^2+4*z^2)+17*R^4*(15*y^2*z^2+2*z^4)+R^2*(-210*y^2*z^4+8*z^6)))))/(Pi*r^4*((r-R)^2+z^2)^4*((r+R)^2+z^2)^(7/2)),
   (3*y*(-(eK*((r-R)^2+z^2)*((r^2-R^2)^4*(r^2+R^2)-(r^2-R^2)^2*(r^4+46*r^2*R^2+R^4)*z^2+(-9*r^6+25*r^4*R^2+25*r^2*R^4-9*R^6)*z^4+(-11*r^4+62*r^2*R^2-11*R^4)*z^6-4*(r^2+R^2)*z^8))+eE*((r^2-R^2)^4*(r^4+14*r^2*R^2+R^4)-192*R^2*(r^2+R^2)*(r^3-r*R^2)^2*z^2-2*(5*r^8+116*r^6*R^2-370*r^4*R^4+116*r^2*R^6+5*R^8)*z^4-4*(r^2+R^2)*(5*r^4-42*r^2*R^2+5*R^4)*z^6-3*(5*r^4-58*r^2*R^2+5*R^4)*z^8-4*(r^2+R^2)*z^10)))/(Pi*r^2*((r-R)^2+z^2)^4*((r+R)^2+z^2)^(7/2))}]
discpotentialC5 = Compile[{R,x,y,z,r,eE,eK},
  {-((x*z*(-(eK*((r-R)^2+z^2)*(45*r^20+384*x^2*y^2*(R^2+z^2)^8+r^16*(1175*R^4+945*x^2*y^2-735*(x^2+3*y^2)*z^2+1059*z^4+6*R^2*(118*x^2+417*y^2-259*z^2))-3*r^18*(117*R^2+5*(7*x^2+21*y^2-22*z^2))-24*r^2*(R^2+z^2)^6*(2*R^4*(x^2+3*y^2)+6*y^2*z^4+2*x^2*z^2*(-68*y^2+z^2)+R^2*(134*x^2*y^2+7*y^4+4*(x^2+3*y^2)*z^2))+r^14*(-2209*R^6+R^4*(-2129*x^2-8329*y^2+2598*z^2)+36*z^2*(175*x^2*y^2-63*(x^2+3*y^2)*z^2+54*z^4)+R^2*(-438*y^4+10171*y^2*z^2-2545*z^4+9*x^2*(-644*y^2+381*z^2)))+r^8*(841*R^12+2*R^10*(1570*x^2+6143*y^2+1095*z^2)+255*z^8*(143*x^2*y^2-13*(x^2+3*y^2)*z^2+3*z^4)-4*R^6*z^2*(-624*y^4+948*y^2*z^2+155*z^4+x^2*(7326*y^2+345*z^2))+2*R^2*z^6*(308*y^4-2555*y^2*z^2+943*z^4-2*x^2*(7271*y^2+510*z^2))+R^8*(5604*y^4+9143*y^2*z^2+1115*z^4+3*x^2*(10913*y^2+575*z^2))+R^4*z^4*(-2492*y^4+4186*y^2*z^2+735*z^4+2*x^2*(15764*y^2+655*z^2)))-r^6*(R^2+z^2)^2*(215*R^10+R^8*(1483*x^2+5391*y^2+656*z^2)+102*z^6*(-260*x^2*y^2+15*(x^2+3*y^2)*z^2-2*z^4)+R^6*(3566*y^4+3499*y^2*z^2+474*z^4+x^2*(24716*y^2+769*z^2))+R^2*z^4*(1070*y^4+1897*y^2*z^2-601*z^4+x^2*(35960*y^2+863*z^2))-R^4*z^2*(1964*y^4+4585*y^2*z^2+364*z^4+x^2*(34964*y^2+1381*z^2)))+r^4*(R^2+z^2)^4*(24*R^8+4*R^6*(101*x^2+335*y^2+24*z^2)+24*z^4*(510*x^2*y^2-17*(x^2+3*y^2)*z^2+z^4)-4*R^2*z^2*(208*y^4+277*y^2*z^2-24*z^4+x^2*(4396*y^2+103*z^2))+R^4*(5*x^2*(2359*y^2+80*z^2)+2*(601*y^4+728*y^2*z^2+72*z^4)))+r^10*(-1865*R^10+32724*x^2*y^2*z^6-4545*(x^2+3*y^2)*z^8+1650*z^10-R^8*(4235*x^2+17309*y^2+1410*z^2)+R^2*z^4*(1516*y^4+9922*y^2*z^2+1023*z^4+x^2*(-53108*y^2+3446*z^2))+R^6*(-4916*y^4+8814*y^2*z^2+498*z^4+x^2*(-28640*y^2+3570*z^2))-4*R^4*z^2*(x^2*(-12914*y^2+731*z^2)+2*(44*y^4+810*y^2*z^2+73*z^4)))+r^12*(2555*R^8+18774*x^2*y^2*z^4-4038*(x^2+3*y^2)*z^6+2235*z^8+4*R^6*(937*x^2+3840*y^2-315*z^2)+4*R^2*z^2*(14*y^4+4119*y^2*z^2-347*z^4+x^2*(-7705*y^2+1486*z^2))+R^4*(x^2*(16505*y^2-5886*z^2)+2*(1141*y^4-8653*y^2*z^2+601*z^4)))))+eE*(45*r^22-15*r^20*(24*R^2+7*x^2+21*y^2-25*z^2)+384*x^2*y^2*(R^2+z^2)^9-6*r^2*(R^2+z^2)^7*(R^2*(579*x^2*y^2-57*y^4+8*R^2*(x^2+3*y^2))+16*(-38*x^2*y^2+R^2*(x^2+3*y^2))*z^2+8*(x^2+3*y^2)*z^4)+r^18*(1134*R^4+945*x^2*y^2-840*(x^2+3*y^2)*z^2+1389*z^4+R^2*(207*x^2+3081*y^2-1669*z^2))-r^6*(R^2+z^2)^3*(177*R^10+R^8*(1563*x^2+2513*y^2+480*z^2)+114*z^6*(51*y^2*z^2-2*z^4+17*x^2*(-20*y^2+z^2))+3*R^6*(-4814*y^4-253*y^2*z^2+50*z^4+x^2*(10465*y^2+173*z^2))+R^2*z^4*(-12822*y^4+5843*y^2*z^2-735*z^4+3*x^2*(18220*y^2+423*z^2))-3*R^4*z^2*(-6440*y^4+1081*y^2*z^2+220*z^4+x^2*(17387*y^2+571*z^2)))+r^8*(R^2+z^2)*(516*R^12+3*R^10*(1201*x^2+345*y^2+335*z^2)+969*z^8*(65*x^2*y^2-5*(x^2+3*y^2)*z^2+z^4)+R^2*z^6*(-64090*x^2*y^2+25460*y^4-7*(407*x^2+2531*y^2)*z^2+2817*z^4)+R^8*(-33596*y^4-4007*y^2*z^2-171*z^4+7*x^2*(6907*y^2+73*z^2))-6*R^6*z^2*(-5358*y^4-39*y^2*z^2+69*z^4+x^2*(12187*y^2+491*z^2))+2*R^4*z^4*(-13678*y^4+1047*y^2*z^2+1047*z^4+x^2*(40007*y^2+1071*z^2)))+r^10*(-630*R^12+R^10*(-5595*x^2+7211*y^2-559*z^2)+3*z^8*(23063*x^2*y^2-2620*(x^2+3*y^2)*z^2+805*z^4)+R^2*z^6*(22506*y^4-20797*y^2*z^2+5045*z^4-x^2*(76614*y^2+179*z^2))-2*R^6*z^2*(16213*y^4+67*y^2*z^2+411*z^4-x^2*(32429*y^2+523*z^2))+2*R^4*z^4*(1083*y^4+4346*y^2*z^2+988*z^4+x^2*(16785*y^2+986*z^2))+R^8*(45994*y^4+1168*y^2*z^2-97*z^4+x^2*(-52835*y^2+1160*z^2)))+r^16*(-1788*R^6+7245*x^2*y^2*z^2-3003*(x^2+3*y^2)*z^4+3003*z^6+R^4*(753*x^2-10751*y^2+2659*z^2)+R^2*(-2988*y^4+11812*y^2*z^2-2806*z^4+x^2*(159*y^2+2326*z^2)))+r^14*(1356*R^8+25074*x^2*y^2*z^4-6306*(x^2+3*y^2)*z^6+4179*z^8-3*R^6*(1123*x^2-6223*y^2+499*z^2)+R^4*(16214*y^4-24236*y^2*z^2+1261*z^4-x^2*(13657*y^2+760*z^2))+R^2*z^2*(-6582*y^4+16313*y^2*z^2-1179*z^4+x^2*(-21396*y^2+6943*z^2)))+r^4*(R^2+z^2)^5*(24*R^8+6*R^6*(69*x^2+172*y^2+16*z^2)+24*z^4*(646*x^2*y^2-19*(x^2+3*y^2)*z^2+z^4)+2*R^2*z^2*(1594*y^4-852*y^2*z^2+48*z^4-x^2*(10994*y^2+249*z^2))+R^4*(x^2*(13721*y^2+372*z^2)+8*(-425*y^4+87*y^2*z^2+18*z^4)))+r^12*(-120*R^10+51498*x^2*y^2*z^6-8583*(x^2+3*y^2)*z^8+3885*z^10+R^6*(-37008*y^4+18968*y^2*z^2+676*z^4+3*x^2*(12601*y^2-934*z^2))+R^8*(5703*x^2-5*(3461*y^2+7*z^2))-R^4*z^2*(-27868*y^4+5986*y^2*z^2+514*z^4+x^2*(13313*y^2+1792*z^2))+2*R^2*z^4*(x^2*(-36185*y^2+3801*z^2)+2*(857*y^4+750*y^2*z^2+695*z^4))))))/(Pi*r^10*((r-R)^2+z^2)^5*((r+R)^2+z^2)^(9/2))),
   (x*y*(eE*(60*r^20-3*r^18*(63*R^2+35*y^2-85*z^2)-48*R^2*y^2*(R^2+z^2)^8+r^10*(9*R^8*(385*R^2-440*x^2+837*y^2)+3*R^6*(1415*R^2+2508*x^2+7896*y^2)*z^2-4*R^4*(5298*R^2-9574*x^2+14375*y^2)*z^4+4*R^2*(5280*R^2-133*x^2+6659*y^2)*z^6-3*(827*R^2+175*y^2)*z^8-165*z^10)+24*r^2*R^2*(R^2+z^2)^6*(R^4-21*y^2*z^2+z^4+2*R^2*(10*y^2+z^2))-r^4*R^2*(R^2+z^2)^4*(237*R^6-9*R^2*z^2*(-82*x^2+337*y^2+27*z^2)-4*z^4*(143*x^2-478*y^2+60*z^2)+3*R^4*(-18*x^2+707*y^2+78*z^2))+r^6*R^2*(R^2+z^2)^2*(993*R^8+R^4*z^2*(9690*x^2-3534*y^2-275*z^2)+R^2*z^4*(-16840*x^2-1579*y^2+65*z^2)+2*z^6*(3413*x^2-616*y^2+233*z^2)+R^6*(-612*x^2+5325*y^2+1119*z^2))-r^8*(2361*R^12+15*z^10*(7*y^2+3*z^2)-R^2*z^8*(11454*x^2+10509*y^2+710*z^2)+4*R^6*z^4*(6882*x^2-9393*y^2+833*z^2)+R^4*z^6*(-24996*x^2+36744*y^2+1159*z^2)+R^8*z^2*(17700*x^2+12975*y^2+2483*z^2)+R^10*(-2250*x^2+8145*y^2+3426*z^2))+r^14*(1467*R^6+150*z^4*(-7*y^2+z^2)+3*R^4*(-588*x^2+197*y^2+3673*z^2)-2*R^2*z^2*(2283*x^2-3954*y^2+5810*z^2))-3*r^16*(41*R^4+R^2*(-114*x^2-95*y^2+1474*z^2)+25*(7*y^2*z^2-5*z^4))-r^12*(3099*R^8+R^4*z^2*(-6798*x^2+21753*y^2-33407*z^2)+2*R^2*z^4*(5320*x^2-11987*y^2+5164*z^2)+R^6*(-3690*x^2+3795*y^2+9786*z^2)+150*(7*y^2*z^6+z^8)))-eK*((r-R)^2+z^2)*(60*r^18-15*r^16*(25*R^2+7*y^2-13*z^2)-48*R^2*y^2*(R^2+z^2)^7+2*r^6*R^2*(R^2+z^2)*(15*R^6*(22*R^2+3*x^2+96*y^2)+3*R^4*(19*R^2+37*x^2-1178*y^2)*z^2+R^2*(-439*R^2-1131*x^2+3774*y^2)*z^4+(271*R^2+475*x^2-2540*y^2)*z^6+437*z^8)-r^8*(15*R^8*(91*R^2+12*x^2+261*y^2)-3*R^6*(751*R^2+72*(-7*x^2+53*y^2))*z^2+12*R^4*(175*R^2-158*x^2+537*y^2)*z^4+4*R^2*(596*R^2-355*(x^2-2*y^2))*z^6+(-3289*R^2+105*y^2)*z^8+45*z^10)+6*r^14*(174*R^4-70*y^2*z^2+30*z^4+R^2*(3*x^2+116*y^2-411*z^2))+24*r^2*R^2*(R^2+z^2)^5*(R^4-19*y^2*z^2+z^4+2*R^2*(8*y^2+z^2))-r^4*R^2*(R^2+z^2)^3*(189*R^6+52*(x^2+40*y^2)*z^4-216*z^6+3*R^4*(6*x^2+457*y^2+54*z^2)-3*R^2*z^2*(50*x^2+923*y^2+81*z^2))-r^12*(1719*R^6+3*R^4*(30*x^2+683*y^2-2211*z^2)+2*R^2*z^2*(300*x^2-2028*y^2+857*z^2)+30*(21*y^2*z^4+z^6))+4*r^10*(465*R^8+3*R^6*(15*x^2+294*y^2-569*z^2)+6*R^4*z^2*(71*x^2-445*y^2+196*z^2)+2*R^2*z^4*(-25*x^2+491*y^2+373*z^2)-15*(7*y^2*z^6+2*z^8)))))/(Pi*r^8*((r-R)^2+z^2)^5*((r+R)^2+z^2)^(9/2)),
   (x*z*(-(eK*((r-R)^2+z^2)*(60*r^16-24*R^2*y^2*(R^2+z^2)^6+3*r^14*(22*R^2-35*y^2+65*z^2)+2*r^8*(-18*R^6*(33*R^2-18*x^2+67*y^2)+5*R^4*(65*R^2+76*x^2-416*y^2)*z^2+4*R^2*(699*R^2-146*x^2+658*y^2)*z^4+(R^2-210*y^2)*z^6-60*z^8)+r^6*(9*R^8*(38*R^2-48*x^2+257*y^2)+5*R^6*(-205*R^2+152*x^2+320*y^2)*z^2-4*R^4*(491*R^2-744*x^2+1713*y^2)*z^4+2*R^2*(235*R^2+188*x^2+854*y^2)*z^6+7*(146*R^2-15*y^2)*z^8-45*z^10)+r^12*(-864*R^4+R^2*(108*x^2+42*y^2-1871*z^2)+60*z^2*(-7*y^2+3*z^2))+3*r^2*R^2*(R^2+z^2)^4*(2*R^4-88*y^2*z^2+2*z^4+R^2*(77*y^2+4*z^2))-r^4*R^2*(R^2+z^2)^2*(24*R^6+z^4*(-676*x^2+914*y^2-21*z^2)+9*R^4*(-12*x^2+118*y^2+3*z^2)-2*R^2*z^2*(-488*x^2+832*y^2+9*z^2))+r^10*(1602*R^6-2*R^2*z^2*(380*x^2-1462*y^2+1471*z^2)+R^4*(-432*x^2+1017*y^2+2090*z^2)-30*(21*y^2*z^4+z^6))))+eE*(60*r^18-24*R^2*y^2*(R^2+z^2)^7+3*r^16*(184*R^2-35*y^2+85*z^2)-r^14*(3*R^2*(866*R^2-464*x^2+433*y^2)+7*(224*R^2+75*y^2)*z^2-375*z^4)-r^4*R^2*(R^2+z^2)^3*(3*R^4*(12*R^2-464*x^2+89*y^2)+R^2*(45*R^2+6220*x^2+2893*y^2)*z^2-2*(9*R^2+1430*x^2+503*y^2)*z^4-27*z^6)+r^12*(3660*R^6+R^2*z^2*(-2044*x^2+1154*y^2-7357*z^2)+R^4*(-4176*x^2+6855*y^2-5863*z^2)+150*z^4*(-7*y^2+z^2))+3*r^2*R^2*(R^2+z^2)^5*(2*R^4-96*y^2*z^2+2*z^4+R^2*(93*y^2+4*z^2))+r^6*(R^2+z^2)*(294*R^10+R^6*z^2*(-8768*x^2+19102*y^2-1343*z^2)-15*z^8*(7*y^2+3*z^2)+R^4*z^4*(23464*x^2-20954*y^2+395*z^2)-R^8*(4176*x^2+2961*y^2+650*z^2)+R^2*z^6*(2360*x^2+9662*y^2+749*z^2))+r^8*(-144*R^10+R^8*(2784*x^2+9669*y^2-7231*z^2)-15*z^8*(35*y^2+11*z^2)-2*R^2*z^6*(4344*x^2-9408*y^2+607*z^2)+4*R^4*z^4*(3674*x^2-2149*y^2+3201*z^2)+2*R^6*z^2*(14988*x^2-12342*y^2+3383*z^2))+r^10*(-1794*R^8-2*R^2*z^4*(5812*x^2-6491*y^2+3567*z^2)+3*R^6*(928*x^2-4049*y^2+4958*z^2)+R^4*z^2*(-12944*x^2+10669*y^2+8452*z^2)-150*(7*y^2*z^6+z^8)))))/(Pi*r^6*((r-R)^2+z^2)^5*((r+R)^2+z^2)^(9/2)),
   -((y*z*(-(eK*((r-R)^2+z^2)*(45*r^20+384*x^2*y^2*(R^2+z^2)^8+r^14*(-(R^2*(2949*R^4+5836*x^2*y^2+478*y^4+R^2*(6393*x^2+4737*y^2)))+(2526*R^4+6300*x^2*y^2+R^2*(10257*x^2+3103*y^2))*z^2-3*(775*R^2+756*(3*x^2+y^2))*z^4+1944*z^6)+r^16*(1521*R^4+945*x^2*y^2-735*(3*x^2+y^2)*z^2+1059*z^4+2*R^2*(1065*x^2+626*y^2-792*z^2))-3*r^18*(139*R^2+5*(21*x^2+7*y^2-22*z^2))-8*r^2*(R^2+z^2)^6*(6*R^4*(3*x^2+y^2)-408*x^2*y^2*z^2+6*(3*x^2+y^2)*z^4+R^2*(392*x^2*y^2+11*y^4+12*(3*x^2+y^2)*z^2))+r^4*(R^2+z^2)^4*(24*R^8+4*R^6*(297*x^2+127*y^2+24*z^2)+24*z^4*(510*x^2*y^2-17*(3*x^2+y^2)*z^2+z^4)-4*R^2*z^2*(145*y^4+77*y^2*z^2-24*z^4+7*x^2*(619*y^2+45*z^2))+R^4*(702*y^4+608*y^2*z^2+144*z^4+9*x^2*(1255*y^2+128*z^2)))-r^6*(R^2+z^2)^2*(231*R^10+3*R^8*(1445*x^2+777*y^2+240*z^2)+102*z^6*(-260*x^2*y^2+15*(3*x^2+y^2)*z^2-2*z^4)+R^6*(2406*y^4+1751*y^2*z^2+570*z^4+3*x^2*(7852*y^2+695*z^2))+R^2*z^4*(1334*y^4+149*y^2*z^2-585*z^4+x^2*(36224*y^2+2595*z^2))-R^4*z^2*(2284*y^4+1961*y^2*z^2+300*z^4+x^2*(35284*y^2+4245*z^2)))+r^12*(3375*R^8+18774*x^2*y^2*z^4-4038*(3*x^2+y^2)*z^6+2235*z^8+12*R^6*(932*x^2+737*y^2-64*z^2)+R^4*(2262*y^4-5446*y^2*z^2+1038*z^4+3*x^2*(5495*y^2-5862*z^2))+4*R^2*z^2*(89*y^4+1004*y^2*z^2-306*z^4+x^2*(-7630*y^2+4443*z^2)))+r^10*(-2355*R^10+32724*x^2*y^2*z^6-4545*(3*x^2+y^2)*z^8+1650*z^10-R^8*(12525*x^2+9419*y^2+2154*z^2)-6*R^6*(726*y^4-373*y^2*z^2-57*z^4+3*x^2*(1560*y^2-601*z^2))-4*R^4*z^2*(92*y^4-183*y^2*z^2+156*z^4+x^2*(-12910*y^2+2202*z^2))+R^2*z^4*(1708*y^4+3250*y^2*z^2+885*z^4+x^2*(-52916*y^2+10374*z^2)))+r^8*(987*R^12+6*R^10*(1535*x^2+1006*y^2+440*z^2)+255*z^8*(143*x^2*y^2-13*(3*x^2+y^2)*z^2+3*z^4)+3*R^4*z^4*(-1164*y^4+578*y^2*z^2+115*z^4+6*x^2*(1696*y^2+225*z^2))-12*R^6*z^2*(-70*y^4+171*y^2*z^2+70*z^4+x^2*(2580*y^2+362*z^2))+R^8*(4364*y^4+4997*y^2*z^2+1455*z^4+13*x^2*(2423*y^2+363*z^2))+2*R^2*z^6*(-(x^2*(14834*y^2+3021*z^2))+4*(4*y^4-71*y^2*z^2+219*z^4)))))+eE*(45*r^22+384*x^2*y^2*(R^2+z^2)^9+r^14*(R^4*(7746*R^4-14971*x^2*y^2+14900*y^4+R^2*(-12195*x^2+30549*y^2))-R^2*(7191*R^4+18104*x^2*y^2+3290*y^4+6*R^2*(92*x^2+5347*y^2))*z^2+3*(581*R^4+8358*x^2*y^2+R^2*(6071*x^2-2403*y^2))*z^4+3*(1449*R^2-2102*(3*x^2+y^2))*z^6+4179*z^8)+r^18*(4128*R^4+945*x^2*y^2-840*(3*x^2+y^2)*z^2+1389*z^4+R^2*(681*x^2+4045*y^2-2787*z^2))-3*r^20*(316*R^2+5*(21*x^2+7*y^2-25*z^2))-8*r^2*(R^2+z^2)^7*(6*R^4*(3*x^2+y^2)-456*x^2*y^2*z^2+6*(3*x^2+y^2)*z^4+R^2*(464*x^2*y^2-13*y^4+12*(3*x^2+y^2)*z^2))+r^10*(168*R^12+3*z^8*(23063*x^2*y^2-2620*(3*x^2+y^2)*z^2+805*z^4)-5*R^10*(4593*x^2+71*(-37*y^2+3*z^2))+3*R^2*z^6*(8652*y^4-7767*y^2*z^2+2241*z^4-x^2*(24388*y^2+127*z^2))+2*R^6*z^2*(-22102*y^4+111*y^2*z^2-1845*z^4+x^2*(26540*y^2+1077*z^2))+2*R^4*z^4*(-4244*y^4+8636*y^2*z^2+2055*z^4+2*x^2*(5729*y^2+1467*z^2))-R^8*(-27200*y^4+19356*y^2*z^2+4725*z^4+x^2*(71629*y^2+3480*z^2)))-r^6*(R^2+z^2)^3*(183*R^10+R^8*(5889*x^2+449*y^2+504*z^2)+114*z^6*(-340*x^2*y^2+17*(3*x^2+y^2)*z^2-2*z^4)+R^2*z^4*(-5838*y^4+2521*y^2*z^2-729*z^4+3*x^2*(20548*y^2+917*z^2))+R^6*(-5220*y^4-457*y^2*z^2+186*z^4+3*x^2*(13539*y^2+967*z^2))-R^4*z^2*(-9054*y^4+323*y^2*z^2+636*z^4+x^2*(62427*y^2+6051*z^2)))+r^16*(-7932*R^6+7245*x^2*y^2*z^2-3003*(3*x^2+y^2)*z^4+3003*z^6+R^4*(2469*x^2-17141*y^2+6843*z^2)+R^2*(-3250*y^4+6734*y^2*z^2-1278*z^4+x^2*(-103*y^2+6348*z^2)))+r^8*(R^2+z^2)*(492*R^12+3*R^10*(4893*x^2-805*y^2+335*z^2)+969*z^8*(65*x^2*y^2-5*(3*x^2+y^2)*z^2+z^4)+3*R^2*z^6*(6026*y^4-3455*y^2*z^2+971*z^4-x^2*(23824*y^2+2191*z^2))+2*R^6*z^2*(16313*y^4+3714*y^2*z^2+33*z^4-x^2*(36322*y^2+3909*z^2))+2*R^4*z^4*(-17153*y^4-468*y^2*z^2+1227*z^4+x^2*(36532*y^2+3981*z^2))+R^8*(-15310*y^4+429*y^2*z^2+69*z^4+x^2*(66635*y^2+6861*z^2)))+r^4*(R^2+z^2)^5*(24*R^8+4*R^6*(345*x^2+79*y^2+24*z^2)+24*z^4*(646*x^2*y^2-19*(3*x^2+y^2)*z^2+z^4)+4*R^2*z^2*(289*y^4-149*y^2*z^2+24*z^4-x^2*(6005*y^2+339*z^2))+R^4*(x^2*(16031*y^2+1392*z^2)+2*(-545*y^4+88*y^2*z^2+72*z^4)))+r^12*(-3540*R^10+51498*x^2*y^2*z^6-8583*(3*x^2+y^2)*z^8+3885*z^10+R^8*(22299*x^2-27887*y^2+3165*z^2)+R^6*(-27774*y^4+47096*y^2*z^2+3180*z^4+x^2*(47037*y^2-7764*z^2))+R^4*z^2*(27138*y^4+6214*y^2*z^2+414*z^4-3*x^2*(4681*y^2+1434*z^2))+6*R^2*z^4*(x^2*(-10529*y^2+3330*z^2)+4*(526*y^4-995*y^2*z^2+326*z^4))))))/(Pi*r^10*((r-R)^2+z^2)^5*((r+R)^2+z^2)^(9/2))),
   (-(eK*((r-R)^2+z^2)*(-12*r^20+48*R^2*x^2*y^2*(R^2+z^2)^7-r^18*(25*R^2+57*z^2)-4*r^2*R^2*y^2*(R^2+z^2)^5*(3*R^2*(33*x^2+y^2)-2*(59*x^2+2*y^2)*z^2)+r^16*(89*R^4+R^2*(109*x^2+141*y^2-48*z^2)+105*(x^2*y^2-z^4))-r^14*(177*R^6-420*x^2*y^2*z^2+90*z^6+R^4*(347*x^2+519*y^2+4*z^2)+R^2*(32*y^4+256*y^2*z^2+55*z^4+10*x^2*(71*y^2-48*z^2)))+r^8*(75*R^12+R^10*(535*x^2+815*y^2+172*z^2)+3*z^8*(35*x^2*y^2+z^4)+R^2*z^6*(-1596*y^4+841*y^2*z^2-4*z^4+x^2*(2664*y^2-443*z^2))+R^8*(440*y^4+615*y^2*z^2+53*z^4+5*x^2*(835*y^2-77*z^2))+R^4*z^4*(-2292*y^4-1368*y^2*z^2-83*z^4+56*x^2*(108*y^2+z^2))-4*R^6*z^2*(-596*y^4+606*y^2*z^2+30*z^4+x^2*(2644*y^2+109*z^2)))+r^10*(-163*R^10-5*R^8*(145*x^2+233*y^2+46*z^2)+3*z^6*(140*x^2*y^2+z^4)-2*R^6*(190*y^4+592*y^2*z^2+7*z^4+8*x^2*(233*y^2-75*z^2))+R^2*z^4*(404*y^4+1688*y^2*z^2-103*z^4+x^2*(-3724*y^2+92*z^2))-4*R^4*z^2*(563*y^4-452*y^2*z^2+17*z^4+x^2*(-2533*y^2+121*z^2)))+r^12*(215*R^8+630*x^2*y^2*z^4-30*z^8+R^6*(633*x^2+1013*y^2+150*z^2)+R^4*(172*y^4+1113*y^2*z^2+4*z^4+x^2*(2131*y^2-1139*z^2))+2*R^2*z^2*(368*y^4+121*y^2*z^2-55*z^4+x^2*(-1960*y^2+323*z^2)))-r^6*R^2*(R^2+z^2)*(19*R^10+R^8*(249*x^2+341*y^2+53*z^2)+R^6*(280*y^4+115*y^2*z^2+22*z^4+x^2*(3070*y^2+31*z^2))+R^2*z^4*(-2708*y^4+25*y^2*z^2-73*z^4+x^2*(7102*y^2+197*z^2))+z^6*(1284*y^4+296*y^2*z^2-23*z^4+x^2*(-4746*y^2+332*z^2))-R^4*z^2*(-720*y^4+497*y^2*z^2+62*z^4+x^2*(6570*y^2+353*z^2)))-r^4*R^2*(R^2+z^2)^3*(6*R^8+R^6*(-67*x^2-79*y^2+24*z^2)-R^4*(92*y^4+62*y^2*z^2-36*z^4+x^2*(1445*y^2+54*z^2))+R^2*z^2*(100*y^4+113*y^2*z^2+24*z^4+x^2*(2719*y^2+93*z^2))+2*z^4*(x^2*(-996*y^2+40*z^2)+3*(6*y^4+16*y^2*z^2+z^4)))))+eE*(-12*r^22+48*R^2*x^2*y^2*(R^2+z^2)^8-r^20*(44*R^2+69*z^2)+4*r^2*R^2*y^2*(R^2+z^2)^6*(5*R^2*(-23*x^2+y^2)+14*(7*x^2-2*y^2)*z^2)-r^4*R^2*(R^2+z^2)^4*(R^4*(6*R^4-1963*x^2*y^2+212*y^4-5*R^2*(15*x^2+11*y^2))+R^2*(24*R^4+2299*x^2*y^2-1472*y^4-2*R^2*(47*x^2+83*y^2))*z^2+(36*R^4-1248*x^2*y^2+1236*y^4+R^2*(37*x^2-167*y^2))*z^4+8*(3*R^2+7*(x-y)*(x+y))*z^6+6*z^8)+r^18*(198*R^4+R^2*(62*x^2+346*y^2+105*z^2)+3*(35*x^2*y^2-54*z^4))-r^16*(430*R^6-525*x^2*y^2*z^2+195*z^6+R^4*(30*x^2+1562*y^2+343*z^2)+R^2*(284*y^4+2762*y^2*z^2-536*z^4+x^2*(227*y^2-894*z^2)))+r^8*(22*R^14+R^12*(718*x^2-326*y^2+515*z^2)+3*z^10*(35*x^2*y^2+z^4)+R^8*z^2*(12320*y^4+3509*y^2*z^2+1117*z^4+x^2*(7595*y^2-179*z^2))+R^4*z^6*(-21536*y^4+40*y^2*z^2-1091*z^4+4*x^2*(10051*y^2-73*z^2))+R^10*(-2740*y^4+8370*y^2*z^2+1456*z^4+5*x^2*(1531*y^2+354*z^2))-2*R^6*z^4*(-11652*y^4+6132*y^2*z^2+281*z^4+2*x^2*(10449*y^2+538*z^2))+R^2*z^8*(-8660*y^4+7102*y^2*z^2-372*z^4+x^2*(-7715*y^2+614*z^2)))+r^14*(508*R^8+R^6*(-290*x^2+3130*y^2-131*z^2)+30*(35*x^2*y^2*z^4-4*z^8)+R^4*(1532*y^4+3574*y^2*z^2-1057*z^4-x^2*(823*y^2+2714*z^2))+R^2*z^2*(3656*y^4-6228*y^2*z^2+199*z^4+x^2*(-8818*y^2+2992*z^2)))+r^10*(74*R^12+525*x^2*y^2*z^8+6*z^12+R^10*(-990*x^2+1750*y^2-1221*z^2)-2*R^6*z^2*(1860*y^4+9864*y^2*z^2+721*z^4+6*x^2*(1657*y^2-298*z^2))-4*R^4*z^4*(7961*y^4-4518*y^2*z^2+431*z^4+x^2*(-15988*y^2+866*z^2))+R^2*z^6*(1984*y^4+11418*y^2*z^2-1097*z^4+x^2*(-25184*y^2+2758*z^2))-R^8*(-4060*y^4+15390*y^2*z^2+2131*z^4+x^2*(7433*y^2+3070*z^2)))+r^12*(-318*R^10+R^8*(788*x^2-3272*y^2+1135*z^2)+3*z^6*(350*x^2*y^2-9*z^4)+R^4*z^2*(-6288*y^4+26019*y^2*z^2-1222*z^4+x^2*(22263*y^2-5825*z^2))+2*R^2*z^4*(4610*y^4+1130*y^2*z^2-461*z^4+x^2*(-12697*y^2+2122*z^2))+R^6*(-3420*y^4+7574*y^2*z^2+1344*z^4+x^2*(4065*y^2+3854*z^2)))-r^6*R^2*(R^2+z^2)^2*(15*R^10+R^8*(310*x^2+98*y^2+67*z^2)+R^2*z^4*(2617*x^2*y^2-12644*y^4-50*(x^2+21*y^2)*z^2+43*z^4)+2*R^4*z^2*(4344*y^4+691*y^2*z^2+51*z^4-3*x^2*(756*y^2+19*z^2))+z^6*(6488*y^4-1128*y^2*z^2+7*z^4+2*x^2*(-785*y^2+54*z^2))+R^6*(x^2*(4893*y^2+354*z^2)+2*(-522*y^4+701*y^2*z^2+59*z^4)))))/(Pi*r^8*((r-R)^2+z^2)^5*((r+R)^2+z^2)^(9/2)),
   -((y*z*(-(eK*((r-R)^2+z^2)*(15*r^16-3*r^14*(66*R^2+35*x^2-25*z^2)-24*R^2*x^2*(R^2+z^2)^6+r^2*R^2*(R^2+z^2)^4*(3*R^2*(2*R^2+79*x^2+2*y^2)+4*(3*R^2-58*x^2+8*y^2)*z^2+6*z^4)-r^4*R^2*(R^2+z^2)^2*(3*R^4*(25*R^2+344*x^2-46*y^2)+R^2*(101*R^2-1516*x^2+1124*y^2)*z^2+(-23*R^2+860*x^2-730*y^2)*z^4-49*z^6)+r^10*(-3*R^4*(226*R^2-269*x^2+214*y^2)-2*R^2*(79*R^2-1446*x^2+396*y^2)*z^2+630*(R-x)*(R+x)*z^4+150*z^6)+3*r^12*(197*R^4-140*x^2*z^2+50*z^4+R^2*(32*x^2+54*y^2+147*z^2))+r^8*(237*R^8-420*x^2*z^6+75*z^8-8*R^4*z^2*(509*x^2-106*y^2+355*z^2)-2*R^2*z^4*(-2514*x^2+702*y^2+409*z^2)-2*R^6*(1056*x^2-474*y^2+743*z^2))+r^6*(102*R^10+2*R^2*z^6*(790*x^2+124*y^2-383*z^2)+15*z^8*(-7*x^2+z^2)+8*R^6*z^2*(197*x^2+92*y^2+198*z^2)-2*R^4*z^4*(3284*x^2-1630*y^2+219*z^2)+R^8*(2133*x^2-612*y^2+1343*z^2))))+eE*(15*r^18-15*r^16*(59*R^2+7*x^2-6*z^2)-24*R^2*x^2*(R^2+z^2)^7+3*r^2*R^2*(R^2+z^2)^5*(R^2*(2*R^2+55*x^2-38*y^2)+4*(R^2-8*x^2+16*y^2)*z^2+2*z^4)+r^8*(15*R^8*(279*R^2+547*x^2+88*y^2)+2*R^6*(4517*R^2-15432*x^2+11898*y^2)*z^2-2*R^4*(5807*R^2+6046*x^2-5600*y^2)*z^4-12*R^2*(1685*R^2-1627*x^2+665*y^2)*z^6-(3667*R^2+525*x^2)*z^8+90*z^10)+r^4*R^2*(R^2+z^2)^3*(33*R^6+z^4*(428*x^2+2282*y^2-105*z^2)-3*R^4*(101*x^2-452*y^2+13*z^2)-R^2*z^2*(635*x^2+3962*y^2+177*z^2))+r^14*(2217*R^4+75*z^2*(-7*x^2+3*z^2)+R^2*(-1557*x^2+1134*y^2+1544*z^2))-r^6*(R^2+z^2)*(1365*R^10+R^8*(1935*x^2+3150*y^2-2609*z^2)-15*z^8*(-7*x^2+z^2)+2*R^4*z^4*(12794*x^2-9415*y^2+220*z^2)+R^2*z^6*(-8188*x^2-886*y^2+2867*z^2)-2*R^6*z^2*(9508*x^2-4427*y^2+3208*z^2))+r^10*(-3945*R^8+R^4*z^2*(13499*x^2-10114*y^2-11152*z^2)+75*z^6*(-14*x^2+3*z^2)+2*R^2*z^4*(7645*x^2-4658*y^2+2043*z^2)-3*R^6*(3947*x^2-1030*y^2+6842*z^2))+r^12*(-261*R^6+150*z^4*(-7*x^2+2*z^2)+R^2*z^2*(1792*x^2-1406*y^2+7441*z^2)+R^4*(7395*x^2-3636*y^2+8512*z^2)))))/(Pi*r^6*((r-R)^2+z^2)^5*((r+R)^2+z^2)^(9/2))),
   (-(eK*((r-R)^2+z^2)*(3*r^16-6*R^2*x^2*(R^2-4*z^2)*(R^2+z^2)^5+3*r^14*(-9*R^2-5*x^2+z^2)+r^2*R^2*(R^2+z^2)^3*(3*R^6+3*R^4*(19*x^2-4*y^2-2*z^2)-4*z^4*(-22*x^2+74*y^2+3*z^2)-3*R^2*z^2*(81*x^2-88*y^2+7*z^2))+3*r^12*(29*R^4+10*(x-z)*z^2*(x+z)+2*R^2*(8*x^2+2*y^2+51*z^2))-r^4*(R^2+z^2)*(3*R^10-90*x^2*z^8+12*z^10+R^4*z^4*(-4014*x^2+2136*y^2-571*z^2)+3*R^8*(60*x^2-20*y^2+121*z^2)-2*R^2*z^6*(-997*x^2+272*y^2+223*z^2)+R^6*z^2*(690*x^2+300*y^2+247*z^2))+r^8*(105*R^8+15*z^6*(32*x^2-7*z^2)-6*R^6*(25*x^2-20*y^2+22*z^2)-6*R^4*z^2*(531*x^2-184*y^2+264*z^2)-4*R^2*z^4*(22*x^2-53*y^2+323*z^2))+r^6*(-33*R^10+345*x^2*z^8-57*z^10+R^2*z^6*(-3040*x^2+1508*y^2-151*z^2)+15*R^8*(17*x^2-8*y^2+51*z^2)+24*R^6*z^2*(128*x^2-27*y^2+109*z^2)+4*R^4*z^4*(-774*x^2+441*y^2+431*z^2))-r^10*(135*R^6+90*z^4*(-3*x^2+z^2)+2*R^2*z^2*(-516*x^2+222*y^2+181*z^2)+R^4*(9*x^2+60*y^2+579*z^2))))+eE*(3*r^18-3*r^16*(32*R^2+5*x^2-2*z^2)-6*R^2*x^2*(R^2-4*z^2)*(R^2+z^2)^6+r^2*R^2*(R^2+z^2)^4*(3*R^6+3*R^2*z^2*(141*x^2+328*y^2-7*z^2)+R^4*(9*x^2-72*y^2-6*z^2)-4*z^4*(92*x^2+194*y^2+3*z^2))+3*r^14*(108*R^4+5*x^2*z^2-9*z^4+R^2*(-43*x^2+40*y^2+542*z^2))+r^4*(R^2+z^2)^2*(96*R^10+3*R^8*(83*x^2+80*y^2-466*z^2)+6*z^8*(15*x^2-2*z^2)+2*R^2*z^6*(-2729*x^2+868*y^2+637*z^2)-2*R^6*z^2*(3234*x^2-1140*y^2+893*z^2)+R^4*z^4*(12007*x^2-11840*y^2+994*z^2))+r^8*(672*R^10+3*z^8*(275*x^2-54*z^2)+15*R^8*(143*x^2-32*y^2+622*z^2)+12*R^6*z^2*(-350*x^2+620*y^2+769*z^2)-4*R^2*z^6*(350*x^2-1012*y^2+1671*z^2)-2*R^4*z^4*(13853*x^2-9952*y^2+4224*z^2))+r^6*(-444*R^12+435*x^2*z^10-69*z^12+R^2*z^8*(-9633*x^2+7368*y^2-326*z^2)-3*R^10*(385*x^2+40*y^2+422*z^2)+5*R^8*z^2*(2373*x^2-2064*y^2+2095*z^2)+2*R^4*z^6*(-9462*x^2+5784*y^2+5615*z^2)+4*R^6*z^4*(4953*x^2-3132*y^2+5696*z^2))-r^10*(270*R^8-750*x^2*z^6+195*z^8+2*R^2*z^4*(-3421*x^2+1532*y^2+2756*z^2)+3*R^6*(663*x^2-280*y^2+2810*z^2)+R^4*z^2*(5523*x^2-1560*y^2+16469*z^2))+r^12*(-288*R^6+2*R^2*z^2*(1683*x^2-1068*y^2+653*z^2)+60*(5*x^2*z^4-2*z^6)+33*R^4*(27*x^2-2*(8*y^2+z^2)))))/(Pi*r^4*((r-R)^2+z^2)^5*((r+R)^2+z^2)^(9/2)),
   (-3*x*y*(eE*(15*r^20-16*R^2*y^2*(R^2+z^2)^8+r^18*(-32*R^2-35*y^2+90*z^2)+r^10*(3*R^8*(520*R^2+1277*y^2)+6*R^6*(485*R^2+898*y^2)*z^2-12*R^4*(455*R^2+2661*y^2)*z^4+8*R^2*(651*R^2+1132*y^2)*z^6-(2676*R^2+175*y^2)*z^8+90*z^10)+8*r^2*R^2*(R^2+z^2)^6*(R^4-21*y^2*z^2+z^4+2*R^2*(10*y^2+z^2))-r^12*(1478*R^8+25*z^6*(14*y^2-9*z^2)+18*R^2*z^4*(-641*y^2+302*z^2)+R^6*(2495*y^2+4634*z^2)+R^4*(9517*y^2*z^2-8031*z^4))+r^14*(776*R^6+50*z^4*(-7*y^2+6*z^2)+R^4*(785*y^2+3578*z^2)+R^2*(4158*y^2*z^2-4118*z^4))-r^16*(156*R^4+R^2*(19*y^2+1162*z^2)+25*(7*y^2*z^2-9*z^4))-r^4*R^2*(R^2+z^2)^4*(81*R^6+828*y^2*z^4-88*z^6+R^4*(725*y^2+74*z^2)-R^2*(1257*y^2*z^2+95*z^4))+r^8*(-988*R^12+5*z^10*(-7*y^2+3*z^2)+3*R^2*z^8*(-105*y^2+58*z^2)-15*R^10*(231*y^2+82*z^2)+6*R^4*z^6*(-3430*y^2+289*z^2)+45*R^8*(35*y^2*z^2+43*z^4)+28*R^6*(775*y^2*z^4+134*z^6))+r^6*R^2*(R^2+z^2)^2*(376*R^8-2686*y^2*z^6+482*z^8+R^6*(1979*y^2+30*z^2)-2*R^4*(2204*y^2*z^2+293*z^4)+R^2*(5087*y^2*z^4+242*z^6)))-eK*((r-R)^2+z^2)*(15*r^18-16*R^2*y^2*(R^2+z^2)^7+r^16*(-107*R^2-35*y^2+75*z^2)+r^12*(-603*R^6-653*R^4*y^2+R^2*(1349*R^2+1552*y^2)*z^2-6*(123*R^2+35*y^2)*z^4+150*z^6)+r^14*(335*R^4-140*y^2*z^2+150*z^4+R^2*(226*y^2-530*z^2))+8*r^2*R^2*(R^2+z^2)^5*(R^4-19*y^2*z^2+z^4+2*R^2*(8*y^2+z^2))-r^4*R^2*(R^2+z^2)^3*(65*R^6+676*y^2*z^4-80*z^6+R^4*(451*y^2+50*z^2)-R^2*(873*y^2*z^2+95*z^4))+r^10*(685*R^8-140*y^2*z^6+75*z^8+4*R^6*(279*y^2-385*z^2)+R^4*(-4128*y^2*z^2+580*z^4)+16*R^2*(86*y^2*z^4-3*z^6))+r^6*R^2*(R^2+z^2)*(237*R^8+R^6*(930*y^2-47*z^2)+402*z^6*(-5*y^2+z^2)-R^4*(2430*y^2*z^2+403*z^4)+R^2*(3270*y^2*z^4+283*z^6))+r^8*(-505*R^10+5*z^8*(-7*y^2+3*z^2)+15*R^8*(-83*y^2+43*z^2)+540*R^6*(8*y^2*z^2+z^4)-4*R^4*(695*y^2*z^4+7*z^6)+R^2*(-1420*y^2*z^6+597*z^8)))))/(Pi*r^8*((r-R)^2+z^2)^5*((r+R)^2+z^2)^(9/2)),
   (-3*x*z*(-(eK*((r-R)^2+z^2)*(5*r^16-8*R^2*y^2*(R^2+z^2)^6+r^14*(-12*R^2-35*y^2+25*z^2)+r^10*(90*R^6+483*R^4*y^2+2*R^2*(115*R^2+614*y^2)*z^2-6*(43*R^2+35*y^2)*z^4+50*z^6)+r^2*R^2*(R^2+z^2)^4*(2*R^4-88*y^2*z^2+2*z^4+R^2*(77*y^2+4*z^2))-r^12*(17*R^4+140*y^2*z^2-50*z^4+R^2*(22*y^2+117*z^2))-r^4*R^2*(R^2+z^2)^2*(23*R^6+530*y^2*z^4-27*z^6+R^4*(390*y^2+19*z^2)-R^2*(880*y^2*z^2+31*z^4))+r^6*(80*R^10-12*R^2*z^6*(-37*y^2+z^2)+5*z^8*(-7*y^2+z^2)+15*R^8*(61*y^2+11*z^2)+4*R^6*(70*y^2*z^2+17*z^4)-2*R^4*(1638*y^2*z^4+17*z^6))-r^8*(125*R^8+5*z^6*(28*y^2-5*z^2)+10*R^6*(102*y^2+25*z^2)+20*R^4*(82*y^2*z^2-7*z^4)+R^2*(-2144*y^2*z^4+190*z^6))))+eE*(5*r^18-8*R^2*y^2*(R^2+z^2)^7+r^16*(83*R^2-35*y^2+30*z^2)+r^2*R^2*(R^2+z^2)^5*(2*R^4-96*y^2*z^2+2*z^4+R^2*(93*y^2+4*z^2))+r^14*(-473*R^4-175*y^2*z^2+75*z^4+R^2*(-897*y^2+46*z^2))+r^12*(943*R^6+R^4*(3677*y^2-534*z^2)+50*z^4*(-7*y^2+2*z^2)+R^2*(1066*y^2*z^2-625*z^4))-r^4*R^2*(R^2+z^2)^3*(27*R^6+618*y^2*z^4-29*z^6+R^4*(553*y^2+25*z^2)-R^2*(1109*y^2*z^2+31*z^4))+r^10*(-875*R^8-350*y^2*z^6+75*z^8+R^6*(-4977*y^2+1090*z^2)+R^4*(7871*y^2*z^2+16*z^4)+2*R^2*(4101*y^2*z^4-649*z^6))+r^8*(345*R^10+45*R^8*(51*y^2-22*z^2)+5*z^8*(-35*y^2+6*z^2)-2*R^6*(9110*y^2*z^2+273*z^4)-12*R^4*(647*y^2*z^4+14*z^6)+R^2*(9168*y^2*z^6-927*z^8))-r^6*(R^2+z^2)*(3*R^10-5*z^8*(-7*y^2+z^2)-3*R^8*(135*y^2+151*z^2)-10*R^6*(929*y^2*z^2+71*z^4)+2*R^4*(7403*y^2*z^4-27*z^6)+R^2*(-2434*y^2*z^6+195*z^8)))))/(Pi*r^6*((r-R)^2+z^2)^5*((r+R)^2+z^2)^(9/2)),
   (-3*y*z*(-(eK*((r-R)^2+z^2)*(15*r^16-8*R^2*y^2*(R^2+z^2)^6+r^14*(-36*R^2-35*y^2+75*z^2)+r^2*R^2*(R^2+z^2)^4*(6*R^4-88*y^2*z^2+6*z^4+R^2*(77*y^2+12*z^2))-r^12*(51*R^4+140*y^2*z^2-150*z^4+R^2*(22*y^2+351*z^2))+r^10*(270*R^6+30*z^4*(-7*y^2+5*z^2)+69*R^4*(7*y^2+10*z^2)+2*R^2*(614*y^2*z^2-387*z^4))-r^4*R^2*(R^2+z^2)^2*(69*R^6+530*y^2*z^4-81*z^6+R^4*(390*y^2+57*z^2)-R^2*(880*y^2*z^2+93*z^4))-r^8*(375*R^8+140*y^2*z^6-75*z^8+30*R^6*(34*y^2+25*z^2)+20*R^4*(82*y^2*z^2-21*z^4)+R^2*(-2144*y^2*z^4+570*z^6))+r^6*(240*R^10+5*z^8*(-7*y^2+3*z^2)+15*R^8*(61*y^2+33*z^2)+4*R^6*(70*y^2*z^2+51*z^4)-6*R^4*(546*y^2*z^4+17*z^6)+12*R^2*(37*y^2*z^6-3*z^8))))+eE*(15*r^18-8*R^2*y^2*(R^2+z^2)^7+r^16*(249*R^2-35*y^2+90*z^2)+3*r^2*R^2*(R^2+z^2)^5*(2*R^4+31*R^2*y^2+4*(R^2-8*y^2)*z^2+2*z^4)+r^12*(2829*R^6+3677*R^4*y^2+2*R^2*(-801*R^2+533*y^2)*z^2-25*(75*R^2+14*y^2)*z^4+300*z^6)+r^14*(-1419*R^4+69*R^2*(-13*y^2+2*z^2)+25*z^2*(-7*y^2+9*z^2))-r^4*R^2*(R^2+z^2)^3*(81*R^6+618*y^2*z^4-87*z^6+R^4*(553*y^2+75*z^2)-R^2*(1109*y^2*z^2+93*z^4))+r^10*(-2625*R^8-350*y^2*z^6+225*z^8+R^6*(-4977*y^2+3270*z^2)+R^4*(7871*y^2*z^2+48*z^4)+6*R^2*(1367*y^2*z^4-649*z^6))+r^8*(1035*R^10-175*y^2*z^8+90*z^10+135*R^8*(17*y^2-22*z^2)-2*R^6*(9110*y^2*z^2+819*z^4)-12*R^4*(647*y^2*z^4+42*z^6)+3*R^2*(3056*y^2*z^6-927*z^8))-r^6*(R^2+z^2)*(9*R^10+5*z^8*(7*y^2-3*z^2)-9*R^8*(45*y^2+151*z^2)-10*R^6*(929*y^2*z^2+213*z^4)+2*R^4*(7403*y^2*z^4-81*z^6)+R^2*(-2434*y^2*z^6+585*z^8)))))/(Pi*r^6*((r-R)^2+z^2)^5*((r+R)^2+z^2)^(9/2)),
   (3*(-(eK*((r-R)^2+z^2)*((r-R)^5*(r+R)^5*(r^6-r^2*R^4+(-5*r^4-13*r^2*R^2+2*R^4)*y^2)+(r-R)^3*(r+R)^3*(r^2*(r-R)*(r+R)*(r^4-42*r^2*R^2+R^4)+2*(5*r^6+261*r^4*R^2+53*r^2*R^4+R^6)*y^2)*z^2-10*(r-R)*(r+R)*(r^2*(r^8+6*r^6*R^2-6*r^2*R^6-R^8)+(-9*r^8+r^6*R^2+163*r^4*R^4-29*r^2*R^6+2*R^8)*y^2)*z^4+2*(-15*r^10+36*r^8*R^2+22*r^6*R^4+36*r^4*R^6-15*r^2*R^8+2*(40*r^8-379*r^6*R^2+301*r^4*R^4-25*r^2*R^6+15*R^8)*y^2)*z^6+(-(r^2*(r^2+R^2)*(35*r^4-166*r^2*R^2+35*R^4))+(115*r^6-816*r^4*R^2+215*r^2*R^4+70*R^6)*y^2)*z^8+(-19*r^6+46*r^4*R^2-19*r^2*R^4+2*(15*r^4+64*r^2*R^2+19*R^4)*y^2)*z^10-4*(r^4+r^2*R^2-2*R^2*y^2)*z^12))+eE*((r-R)^5*(r+R)^5*(r^2*(r-R)*(r+R)*(r^4+14*r^2*R^2+R^4)-(5*r^6+108*r^4*R^2+17*r^2*R^4-2*R^6)*y^2)+(r-R)^3*(r+R)^3*(2*r^2*(r^8-82*r^6*R^2+82*r^2*R^6-R^8)+(5*r^8+1849*r^6*R^2+3171*r^4*R^4+91*r^2*R^6+4*R^8)*y^2)*z^2-(r-R)*(r+R)*(r^2*(r-R)*(r+R)*(9*r^8+604*r^6*R^2+54*r^4*R^4+604*r^2*R^6+9*R^8)-2*(50*r^10+1701*r^8*R^2-6234*r^6*R^4-844*r^4*R^6+216*r^2*R^8-9*R^10)*y^2)*z^4-2*(4*r^2*(r^2+R^2)*(r^4+14*r^2*R^2+R^4)*(5*r^4-14*r^2*R^2+5*R^4)+(-125*r^10+908*r^8*R^2+5082*r^6*R^4-5292*r^4*R^6+235*r^2*R^8-40*R^10)*y^2)*z^6+(-65*r^10+228*r^8*R^2+954*r^6*R^4+228*r^4*R^6-65*r^2*R^8+(275*r^8-5667*r^6*R^2+3183*r^4*R^4+95*r^2*R^6+130*R^8)*y^2)*z^8+(-2*r^2*(r^2+R^2)*(27*r^4-262*r^2*R^2+27*R^4)+(145*r^6-2338*r^4*R^2+357*r^2*R^4+108*R^6)*y^2)*z^10+(-23*r^6+158*r^4*R^2-23*r^2*R^4+2*(15*r^4+68*r^2*R^2+23*R^4)*y^2)*z^12-4*(r^4+r^2*R^2-2*R^2*y^2)*z^14)))/(Pi*r^4*((r-R)^2+z^2)^5*((r+R)^2+z^2)^(9/2))}]


DiscPotential[R_, {x_,y_,z_}, {c0_/;(c0\[Element]Booleans),c1_/;(c1\[Element]Booleans),c2_/;(c2\[Element]Booleans),c3_/;(c3\[Element]Booleans),c4_/;(c4\[Element]Booleans),c5_/;(c5\[Element]Booleans)}] :=
  Module[{r,ePi,eK,eE,a},
    r = Sqrt[x^2+y^2];
    If[c0\[Or]c1\[Or]c2\[Or]c3\[Or]c4\[Or]c5, a = 4*r*R/((r+R)^2+z^2)];
    If[c0, ePi = EllipticPi[4*r*R/(r+R)^2,a]];
    If[c1\[Or]c2\[Or]c3\[Or]c4\[Or]c5, eE = EllipticE[a]];
    If[c0\[Or]c1\[Or]c2\[Or]c3\[Or]c4\[Or]c5, eK = EllipticK[a]];
    {If[c0,Quiet@discpotentialC0[R,x,y,z,r,ePi,eK],0],
     If[c1,Quiet@discpotentialC1[R,x,y,z,r,eE,eK],{0,0,0}],
     If[c2,Quiet@discpotentialC2[R,x,y,z,r,eE,eK],{0,0,0,0,0}],
     If[c3,Quiet@discpotentialC3[R,x,y,z,r,eE,eK],{0,0,0,0,0,0,0}],
     If[c4,Quiet@discpotentialC4[R,x,y,z,r,eE,eK],{0,0,0,0,0,0,0,0,0}],
     If[c5,Quiet@discpotentialC5[R,x,y,z,r,eE,eK],{0,0,0,0,0,0,0,0,0,0,0}]}]


(* ::Text:: *)
(*compute the center and area of a pixel, for speeding up the calculation:*)


PixelCenterArea[DiscPixel[{X_,Y_},R_]] := {{X,Y},\[Pi]*R^2}


SetAttributes[DiscPixel,{Locked,ReadProtected}]
SetAttributes[DiscPotential,{Locked,ReadProtected}]
SetAttributes[discpotentialC0,{Locked,ReadProtected}]
SetAttributes[discpotentialC1,{Locked,ReadProtected}]
SetAttributes[discpotentialC2,{Locked,ReadProtected}]
SetAttributes[discpotentialC3,{Locked,ReadProtected}]
SetAttributes[discpotentialC4,{Locked,ReadProtected}]
SetAttributes[discpotentialC5,{Locked,ReadProtected}]


(* ::Subsubsection::Closed:: *)
(*common code*)


(* ::Text:: *)
(*compute the center and area of a list of pixel, for speeding up the calculation:*)


PixelCenterArea[\[CapitalLambda]_List] := Module[{a,A},
  (* recursively calculate the centers and areas of the pixels in the list *)
  a = PixelCenterArea/@\[CapitalLambda];
  (* total area *)
  A = Total[a\[Transpose][[2]]];
  (* center of mass of the assembly: weighted average *)
  {Total[#[[1]]#[[2]]&/@a]/A, A}]


(* ::Text:: *)
(*join the pixel potential definitions for the various pixel shapes:*)
(*- point*)
(*- disc*)
(*- polygon*)
(*- a list of the above (recursive!)*)


PixelPotentialNoCover[PointPixel[{X_,Y_},a_], {x_,y_,z_}, {c0_/;(c0\[Element]Booleans),c1_/;(c1\[Element]Booleans),c2_/;(c2\[Element]Booleans),c3_/;(c3\[Element]Booleans),c4_/;(c4\[Element]Booleans),c5_/;(c5\[Element]Booleans)}] :=
  PointPotential[{x-X,y-Y,z},a,{c0,c1,c2,c3,c4,c5}]
PixelPotentialNoCover[PolygonPixel[\[CapitalLambda]_/;VectorQ[\[CapitalLambda],MatchQ[#,InfPoint[_]]\[Or]MatchQ[#,{_,_}]&]], {x_,y_,z_}, {c0_/;(c0\[Element]Booleans),c1_/;(c1\[Element]Booleans),c2_/;(c2\[Element]Booleans),c3_/;(c3\[Element]Booleans),c4_/;(c4\[Element]Booleans),c5_/;(c5\[Element]Booleans)}] :=
  PolygonPotential[\[CapitalLambda],{x,y,z},{c0,c1,c2,c3,c4,c5}]
PixelPotentialNoCover[DiscPixel[{X_,Y_},R_], {x_,y_,z_}, {c0_/;(c0\[Element]Booleans),c1_/;(c1\[Element]Booleans),c2_/;(c2\[Element]Booleans),c3_/;(c3\[Element]Booleans),c4_/;(c4\[Element]Booleans),c5_/;(c5\[Element]Booleans)}] :=
  DiscPotential[R,{x-X,y-Y,z},{c0,c1,c2,c3,c4,c5}]
PixelPotentialNoCover[\[CapitalLambda]_List, {x_,y_,z_}, {c0_/;(c0\[Element]Booleans),c1_/;(c1\[Element]Booleans),c2_/;(c2\[Element]Booleans),c3_/;(c3\[Element]Booleans),c4_/;(c4\[Element]Booleans),c5_/;(c5\[Element]Booleans)}] :=
  Total[PixelPotentialNoCover[#,{x,y,z},{c0,c1,c2,c3,c4,c5}]&/@\[CapitalLambda]]


(* ::Text:: *)
(*with a cover plane: ideally we'd take nmax->\[Infinity]*)
(*and with speedup capability*)


Options[PixelPotential] = {CoverPlane->{\[Infinity],0},
							FastPotential->False};


PixelPotential[\[CapitalLambda]_, {x_,y_,z_}, {c0_/;(c0\[Element]Booleans),c1_/;(c1\[Element]Booleans),c2_/;(c2\[Element]Booleans),c3_/;(c3\[Element]Booleans),c4_/;(c4\[Element]Booleans),c5_/;(c5\[Element]Booleans)}, opts:OptionsPattern[]] := Module[{h,nmax,fast,\[CapitalLambda]1,s},
  {h,nmax} = OptionValue[CoverPlane];
  fast = OptionValue[FastPotential];
  (* if desired, replace all pixels by their point equivalents *)
  \[CapitalLambda]1 = If[fast, PointPixel@@PixelCenterArea[\[CapitalLambda]], \[CapitalLambda]];
  If[h===\[Infinity]\[Or]nmax==0, PixelPotentialNoCover[\[CapitalLambda]1, {x,y,z}, {c0,c1,c2,c3,c4,c5}],
    Sum[s=Sign[z-2*n*h];{s,{s,s,1},{s,s,1,s,1},{s,1,1,s,s,s,1},{s,1,s,s,s,1,1,s,1},{s,1,s,s,1,s,1,1,s,s,1}}*PixelPotentialNoCover[\[CapitalLambda]1, {x,y,Abs[z-2*n*h]}, {c0,c1,c2,c3,c4,c5}], {n,-nmax,nmax}]]]


(* ::Text:: *)
(*extract the potential and the derivatives in generally useable form (completing redundances)*)


Options[ComputeFinitePotential] = {CoverPlane->{\[Infinity],0},
									FastPotential->False};


ComputeFinitePotential::unimplemented="Derivatives of order `1` are currently not implemented.";


ComputeFinitePotential[0, \[CapitalLambda]_, {x_,y_,z_}, opts:OptionsPattern[]] :=
  PixelPotential[\[CapitalLambda], {x,y,z}, {True,False,False,False,False,False}, Evaluate[FilterRules[{opts,Options[ComputeFinitePotential]}, Options[PixelPotential]]]][[1]]
ComputeFinitePotential[1, \[CapitalLambda]_, {x_,y_,z_}, opts:OptionsPattern[]] :=
  PixelPotential[\[CapitalLambda], {x,y,z}, {False,True,False,False,False,False}, Evaluate[FilterRules[{opts,Options[ComputeFinitePotential]}, Options[PixelPotential]]]][[2]]
ComputeFinitePotential[2, \[CapitalLambda]_, {x_,y_,z_}, opts:OptionsPattern[]] :=
  {{#[[1]], #[[2]], #[[3]]},
   {#[[2]], #[[4]], #[[5]]},
   {#[[3]], #[[5]], -#[[1]]-#[[4]]}}&[PixelPotential[\[CapitalLambda], {x,y,z}, {False,False,True,False,False,False}, Evaluate[FilterRules[{opts,Options[ComputeFinitePotential]}, Options[PixelPotential]]]][[3]]]
ComputeFinitePotential[3, \[CapitalLambda]_, {x_,y_,z_}, opts:OptionsPattern[]] :=
  {{{-#[[4]]-#[[5]],#[[1]],#[[2]]},{#[[1]],#[[4]],#[[7]]},{#[[2]],#[[7]],#[[5]]}},
   {{#[[1]],#[[4]],#[[7]]},{#[[4]],-#[[1]]-#[[6]],#[[3]]},{#[[7]],#[[3]],#[[6]]}},
   {{#[[2]],#[[7]],#[[5]]},{#[[7]],#[[3]],#[[6]]},{#[[5]],#[[6]],-#[[2]]-#[[3]]}}}&[PixelPotential[\[CapitalLambda], {x,y,z}, {False,False,False,True,False,False}, Evaluate[FilterRules[{opts,Options[ComputeFinitePotential]}, Options[PixelPotential]]]][[4]]]
ComputeFinitePotential[4, \[CapitalLambda]_, {x_,y_,z_}, opts:OptionsPattern[]] :=
  {{{{-#[[3]] - #[[4]], #[[1]], #[[2]]}, {#[[1]], #[[3]], -#[[7]] - #[[9]]}, {#[[2]], -#[[7]] - #[[9]], #[[4]]}}, 
  {{#[[1]], #[[3]], -#[[7]] - #[[9]]}, {#[[3]], #[[5]], -#[[2]] - #[[6]]}, {-#[[7]] - #[[9]], -#[[2]] - #[[6]], -#[[1]] - #[[5]]}}, 
  {{#[[2]], -#[[7]] - #[[9]], #[[4]]}, {-#[[7]] - #[[9]], -#[[2]] - #[[6]], -#[[1]] - #[[5]]}, {#[[4]], -#[[1]] - #[[5]], #[[6]]}}}, 
 {{{#[[1]], #[[3]], -#[[7]] - #[[9]]}, {#[[3]], #[[5]], -#[[2]] - #[[6]]}, {-#[[7]] - #[[9]], -#[[2]] - #[[6]], -#[[1]] - #[[5]]}}, 
  {{#[[3]], #[[5]], -#[[2]] - #[[6]]}, {#[[5]], -#[[3]] - #[[8]], #[[7]]}, {-#[[2]] - #[[6]], #[[7]], #[[8]]}}, 
  {{-#[[7]] - #[[9]], -#[[2]] - #[[6]], -#[[1]] - #[[5]]}, {-#[[2]] - #[[6]], #[[7]], #[[8]]}, {-#[[1]] - #[[5]], #[[8]], #[[9]]}}}, 
 {{{#[[2]], -#[[7]] - #[[9]], #[[4]]}, {-#[[7]] - #[[9]], -#[[2]] - #[[6]], -#[[1]] - #[[5]]}, {#[[4]], -#[[1]] - #[[5]], #[[6]]}}, 
  {{-#[[7]] - #[[9]], -#[[2]] - #[[6]], -#[[1]] - #[[5]]}, {-#[[2]] - #[[6]], #[[7]], #[[8]]}, {-#[[1]] - #[[5]], #[[8]], #[[9]]}}, 
  {{#[[4]], -#[[1]] - #[[5]], #[[6]]}, {-#[[1]] - #[[5]], #[[8]], #[[9]]}, {#[[6]], #[[9]], -#[[4]] - #[[8]]}}}}&[PixelPotential[\[CapitalLambda], {x,y,z}, {False,False,False,False,True,False}, Evaluate[FilterRules[{opts,Options[ComputeFinitePotential]}, Options[PixelPotential]]]][[5]]]
ComputeFinitePotential[5, \[CapitalLambda]_, {x_,y_,z_}, opts:OptionsPattern[]] :=
  {{{{{-#[[1]] - #[[3]], -#[[4]] - #[[6]], -#[[5]] - #[[7]]}, {-#[[4]] -
       #[[6]], #[[1]], #[[2]]}, {-#[[5]] - #[[7]], #[[2]], 
     #[[3]]}}, {{-#[[4]] - #[[6]], #[[1]], #[[2]]}, {#[[1]], #[[4]], 
     #[[5]]}, {#[[2]], #[[5]], #[[6]]}}, {{-#[[5]] - #[[7]], #[[2]], 
     #[[3]]}, {#[[2]], #[[5]], #[[6]]}, {#[[3]], #[[6]], 
     #[[7]]}}}, {{{-#[[4]] - #[[6]], #[[1]], #[[2]]}, {#[[1]], #[[4]],
      #[[5]]}, {#[[2]], #[[5]], #[[6]]}}, {{#[[1]], #[[4]], 
     #[[5]]}, {#[[4]], -#[[1]] - #[[9]], #[[8]]}, {#[[5]], #[[8]], 
     #[[9]]}}, {{#[[2]], #[[5]], #[[6]]}, {#[[5]], #[[8]], 
     #[[9]]}, {#[[6]], 
     #[[9]], -#[[2]] - #[[8]]}}}, {{{-#[[5]] - #[[7]], #[[2]], 
     #[[3]]}, {#[[2]], #[[5]], #[[6]]}, {#[[3]], #[[6]], 
     #[[7]]}}, {{#[[2]], #[[5]], #[[6]]}, {#[[5]], #[[8]], 
     #[[9]]}, {#[[6]], #[[9]], -#[[2]] - #[[8]]}}, {{#[[3]], #[[6]], 
     #[[7]]}, {#[[6]], 
     #[[9]], -#[[2]] - #[[8]]}, {#[[7]], -#[[2]] - #[[8]], -#[[3]] - 
      #[[9]]}}}}, {{{{-#[[4]] - #[[6]], #[[1]], #[[2]]}, {#[[1]], 
     #[[4]], #[[5]]}, {#[[2]], #[[5]], #[[6]]}}, {{#[[1]], #[[4]], 
     #[[5]]}, {#[[4]], -#[[1]] - #[[9]], #[[8]]}, {#[[5]], #[[8]], 
     #[[9]]}}, {{#[[2]], #[[5]], #[[6]]}, {#[[5]], #[[8]], 
     #[[9]]}, {#[[6]], #[[9]], -#[[2]] - #[[8]]}}}, {{{#[[1]], #[[4]],
      #[[5]]}, {#[[4]], -#[[1]] - #[[9]], #[[8]]}, {#[[5]], #[[8]], 
     #[[9]]}}, {{#[[4]], -#[[1]] - #[[9]], 
     #[[8]]}, {-#[[1]] - #[[9]], -#[[4]] - #[[10]], -#[[5]] - 
      #[[11]]}, {#[[8]], -#[[5]] - #[[11]], #[[10]]}}, {{#[[5]], 
     #[[8]], #[[9]]}, {#[[8]], -#[[5]] - #[[11]], #[[10]]}, {#[[9]], 
     #[[10]], #[[11]]}}}, {{{#[[2]], #[[5]], #[[6]]}, {#[[5]], #[[8]],
      #[[9]]}, {#[[6]], #[[9]], -#[[2]] - #[[8]]}}, {{#[[5]], #[[8]], 
     #[[9]]}, {#[[8]], -#[[5]] - #[[11]], #[[10]]}, {#[[9]], #[[10]], 
     #[[11]]}}, {{#[[6]], #[[9]], -#[[2]] - #[[8]]}, {#[[9]], #[[10]],
      #[[11]]}, {-#[[2]] - #[[8]], 
     #[[11]], -#[[6]] - #[[10]]}}}}, {{{{-#[[5]] - #[[7]], #[[2]], 
     #[[3]]}, {#[[2]], #[[5]], #[[6]]}, {#[[3]], #[[6]], 
     #[[7]]}}, {{#[[2]], #[[5]], #[[6]]}, {#[[5]], #[[8]], 
     #[[9]]}, {#[[6]], #[[9]], -#[[2]] - #[[8]]}}, {{#[[3]], #[[6]], 
     #[[7]]}, {#[[6]], 
     #[[9]], -#[[2]] - #[[8]]}, {#[[7]], -#[[2]] - #[[8]], -#[[3]] - 
      #[[9]]}}}, {{{#[[2]], #[[5]], #[[6]]}, {#[[5]], #[[8]], 
     #[[9]]}, {#[[6]], #[[9]], -#[[2]] - #[[8]]}}, {{#[[5]], #[[8]], 
     #[[9]]}, {#[[8]], -#[[5]] - #[[11]], #[[10]]}, {#[[9]], #[[10]], 
     #[[11]]}}, {{#[[6]], #[[9]], -#[[2]] - #[[8]]}, {#[[9]], #[[10]],
      #[[11]]}, {-#[[2]] - #[[8]], 
     #[[11]], -#[[6]] - #[[10]]}}}, {{{#[[3]], #[[6]], 
     #[[7]]}, {#[[6]], 
     #[[9]], -#[[2]] - #[[8]]}, {#[[7]], -#[[2]] - #[[8]], -#[[3]] - 
      #[[9]]}}, {{#[[6]], #[[9]], -#[[2]] - #[[8]]}, {#[[9]], #[[10]],
      #[[11]]}, {-#[[2]] - #[[8]], 
     #[[11]], -#[[6]] - #[[10]]}}, {{#[[7]], -#[[2]] - 
      #[[8]], -#[[3]] - #[[9]]}, {-#[[2]] - #[[8]], 
     #[[11]], -#[[6]] - #[[10]]}, {-#[[3]] - #[[9]], -#[[6]] - 
      #[[10]], -#[[7]] - #[[11]]}}}}}&[PixelPotential[\[CapitalLambda], {x,y,z}, {False,False,False,False,False,True}, Evaluate[FilterRules[{opts,Options[ComputeFinitePotential]}, Options[PixelPotential]]]][[6]]]
ComputeFinitePotential[d_, \[CapitalLambda]_, {x_,y_,z_}, opts:OptionsPattern[]]:=Module[{},
	Message[ComputeFinitePotential::unimplemented,d];
	$Failed]


SetAttributes[PixelCenterArea,{Locked,ReadProtected}]
SetAttributes[PixelPotentialNoCover,{Locked,ReadProtected}]
SetAttributes[PixelPotential,{Locked,ReadProtected}]
SetAttributes[ComputeFinitePotential,{Locked,ReadProtected}]


(* ::Section::Closed:: *)
(*optimization*)


(* ::Subsection::Closed:: *)
(*common*)


(* ::Subsubsection::Closed:: *)
(*input checking and completion*)


(* ::Text:: *)
(*check whether or not a coordinate (or coordinate + rotation matrix) specifier is valid*)


ExpandPointSpecifier::spec="coordinate specification `1` is invalid."


ExpandPointSpecifier[{x_?NumericQ,y_?NumericQ,z_?NumericQ}] :=
  {{x,y,z},IdentityMatrix[3]}
ExpandPointSpecifier[{{x_?NumericQ,y_?NumericQ,z_?NumericQ},M_/;(MatrixQ[M,NumericQ]\[And]Dimensions[M]=={3,3})}] :=
  {{x,y,z},M}
ExpandPointSpecifier[P_] := Module[{},
  Message[ExpandPointSpecifier::spec, P];
  $Failed]


(* ::Text:: *)
(*check whether or not a derivative specifier is valid:*)


dspecQ[Automatic]=True             (* unconstrained *)
dspecQ[x_?NumericQ]=True           (* equality *)
dspecQ[{x_?NumericQ,0}]=True       (* equality *)
dspecQ[{x_?NumericQ,-1}]=True      (* maximum specification *)
dspecQ[{x_?NumericQ,1}]=True       (* minimum specification *)
dspecQ[x_]=False                   (* invalid specification *)


(* ::Text:: *)
(*expand a derivative specification to standard form:*)


Expanddspec::spec="value specification `1` is invalid."


Expanddspec[Automatic]=Automatic      (* unconstrained *)
Expanddspec[x_?NumericQ]={x,0}        (* equality *)
Expanddspec[{x_?NumericQ,0}]={x,0}    (* equality *)
Expanddspec[{x_?NumericQ,-1}]={x,-1}  (* maximum specification *)
Expanddspec[{x_?NumericQ,1}]={x,1}    (* minimum specification *)
Expanddspec[x_] := Module[{},         (* this should never happen since we've already pattern-matched with dspecQ *)
	Message[Expanddspec::spec, x];
	$Failed]


ExpandD0Constraint::spec="potential specification `1` is invalid."
ExpandD1Constraint::spec="first-derivative specification `1` is invalid."
ExpandD2Constraint::spec="second-derivative specification `1` is invalid."
ExpandD3Constraint::spec="third-derivative specification `1` is invalid."
ExpandD4Constraint::spec="fourth-derivative specification `1` is invalid."
ExpandD5Constraint::spec="fifth-derivative specification `1` is invalid."


ExpandD0Constraint[d0_?dspecQ] := Expanddspec[d0]
ExpandD0Constraint[d0_] := Module[{},
  Message[ExpandD0Constraint::spec, d0];
  $Failed]


ExpandD1Constraint[Automatic] := Table[Automatic,{3}]
ExpandD1Constraint[d1_/;(VectorQ[d1,dspecQ]\[And]Length[d1]==3)] := Expanddspec/@d1
ExpandD1Constraint[d1_] := Module[{},
  Message[ExpandD1Constraint::spec, d1];
  $Failed]


ExpandD2Constraint[Automatic] := Table[Automatic,{3},{3}]
ExpandD2Constraint[d2_/;(MatrixQ[d2,dspecQ]\[And]Dimensions[d2]=={3,3})] := Map[Expanddspec,d2,{2}]
ExpandD2Constraint[d2_] := Module[{},
  Message[ExpandD2Constraint::spec, d2];
  $Failed]


ExpandD3Constraint[Automatic] := Table[Automatic,{3},{3},{3}]
ExpandD3Constraint[d3_/;(ArrayDepth[d3]==3\[And](And@@Flatten[Map[dspecQ,d3,{3}]])\[And]Dimensions[d3]=={3,3,3})] := Map[Expanddspec,d3,{3}]
ExpandD3Constraint[d3_] := Module[{},
  Message[ExpandD3Constraint::spec, d3];
  $Failed]


ExpandD4Constraint[Automatic] := Table[Automatic,{3},{3},{3},{3}]
ExpandD4Constraint[d4_/;(ArrayDepth[d4]==4\[And](And@@Flatten[Map[dspecQ,d4,{4}]])\[And]Dimensions[d4]=={3,3,3,3})] := Map[Expanddspec,d4,{4}]
ExpandD4Constraint[d4_] := Module[{},
  Message[ExpandD4Constraint::spec, d4];
  $Failed]


ExpandD5Constraint[Automatic] := Table[Automatic,{3},{3},{3},{3},{3}]
ExpandD5Constraint[d5_/;(ArrayDepth[d5]==5\[And](And@@Flatten[Map[dspecQ,d5,{5}]])\[And]Dimensions[d5]=={3,3,3,3,3})] := Map[Expanddspec,d5,{5}]
ExpandD5Constraint[d5_] := Module[{},
  Message[ExpandD5Constraint::spec, d5];
  $Failed]


(* ::Text:: *)
(*check symmetry: for each equal set of entries, replace one with the mean value and the others with Automatic*)


D2SymmetryCheck::ovcst="The second derivative tensor `1` is not symmetric (mismatch at `2` is `3`)."
D3SymmetryCheck::ovcst="The third derivative tensor `1` is not symmetric (mismatch at `2` is `3`)."
D4SymmetryCheck::ovcst="The fourth derivative tensor `1` is not symmetric (mismatch at `2` is `3`)."
D5SymmetryCheck::ovcst="The fifth derivative tensor `1` is not symmetric (mismatch at `2` is `3`)."
D2SymmetryCheck::type="The second derivative constraint tensor `1` is not symmetric (type of constraints at `2` and `3` differ)."
D3SymmetryCheck::type="The third derivative constraint tensor `1` is not symmetric (type of constraints at `2` and `3` differ)."
D4SymmetryCheck::type="The fourth derivative constraint tensor `1` is not symmetric (type of constraints at `2` and `3` differ)."
D5SymmetryCheck::type="The fifth derivative constraint tensor `1` is not symmetric (type of constraints at `2` and `3` differ)."


D2SymmetryCheck[$Failed] := $Failed;
D2SymmetryCheck[d2_] := Module[{d2x,\[Delta],L,f},
	d2x=d2;
	(* sets of equivalent entries *)
	L={{{1,2},{2,1}},{{1,3},{3,1}},{{2,3},{3,2}}};
	(* deal with each set separately *)
	Map[Function[\[Lambda],
		f=Select[{#,d2[[Sequence@@#]]}&/@\[Lambda],#[[2]]=!=Automatic&];
		If[Length[f]>=2,
			(* check whether the constraint types are the same *)
			If[Length[Union[#[[2,2]]&/@f]]!=1,Message[D2SymmetryCheck::type,d2,\[Lambda][[1]],\[Lambda][[2]]]];
			(* check whether values differ *)
			\[Delta]=Chop[N[StandardDeviation[#[[2,1]]&/@f]]];
			If[\[Delta]!=0,Message[D2SymmetryCheck::ovcst,d2,\[Lambda][[1]],\[Delta]*Sqrt[2]]];
			d2x=ReplacePart[d2x,Append[(#[[1]]->Automatic)&/@Rest[f],f[[1,1]]->Mean[f[[All,2]]]]]]],
		L];
	d2x]


D3SymmetryCheck[$Failed] := $Failed;
D3SymmetryCheck[d3_] := Module[{d3x,\[Delta],L,f},
	d3x=d3;
	(* sets of equivalent entries *)
	L={{{1,1,2},{1,2,1},{2,1,1}},
		{{1,1,3},{1,3,1},{3,1,1}},
		{{1,2,2},{2,1,2},{2,2,1}},
		{{1,3,3},{3,1,3},{3,3,1}},
		{{2,2,3},{2,3,2},{3,2,2}},
		{{2,3,3},{3,2,3},{3,3,2}},
		{{1,2,3},{1,3,2},{2,1,3},{2,3,1},{3,1,2},{3,2,1}}};
	(* deal with each set separately *)
	Map[Function[\[Lambda],
		f=Select[{#,d3[[Sequence@@#]]}&/@\[Lambda],#[[2]]=!=Automatic&];
		If[Length[f]>=2,
			(* check whether the constraint types are the same *)
			If[Length[Union[#[[2,2]]&/@f]]!=1,Message[D3SymmetryCheck::type,d3,\[Lambda][[1]],\[Lambda][[2]]]];
			(* check whether values differ *)
			\[Delta]=Chop[N[StandardDeviation[#[[2,1]]&/@f]]];
			If[\[Delta]!=0,Message[D3SymmetryCheck::ovcst,d3,\[Lambda][[1]],\[Delta]]];
			d3x=ReplacePart[d3x,Append[(#[[1]]->Automatic)&/@Rest[f],f[[1,1]]->Mean[f[[All,2]]]]]]],
		L];
	d3x]


D4SymmetryCheck[$Failed] := $Failed;
D4SymmetryCheck[d4_] := Module[{d4x,\[Delta],L,f},
	d4x=d4;
	(* sets of equivalent entries *)
	L={{{1,1,1,2},{1,1,2,1},{1,2,1,1},{2,1,1,1}},
       {{1,1,1,3},{1,1,3,1},{1,3,1,1},{3,1,1,1}},
       {{1,2,2,2},{2,1,2,2},{2,2,1,2},{2,2,2,1}},
       {{1,3,3,3},{3,1,3,3},{3,3,1,3},{3,3,3,1}},
       {{2,2,2,3},{2,2,3,2},{2,3,2,2},{3,2,2,2}},
       {{2,3,3,3},{3,2,3,3},{3,3,2,3},{3,3,3,2}},
       {{1,1,2,2},{1,2,1,2},{1,2,2,1},{2,1,1,2},{2,1,2,1},{2,2,1,1}},
       {{1,1,3,3},{1,3,1,3},{1,3,3,1},{3,1,1,3},{3,1,3,1},{3,3,1,1}},
       {{2,2,3,3},{2,3,2,3},{2,3,3,2},{3,2,2,3},{3,2,3,2},{3,3,2,2}},
       {{1,1,2,3},{1,1,3,2},{1,2,1,3},{1,2,3,1},{1,3,1,2},{1,3,2,1},{2,1,1,3},{2,1,3,1},{2,3,1,1},{3,1,1,2},{3,1,2,1},{3,2,1,1}},
       {{1,2,2,3},{1,2,3,2},{1,3,2,2},{2,1,2,3},{2,1,3,2},{2,2,1,3},{2,2,3,1},{2,3,1,2},{2,3,2,1},{3,1,2,2},{3,2,1,2},{3,2,2,1}},
       {{1,2,3,3},{1,3,2,3},{1,3,3,2},{2,1,3,3},{2,3,1,3},{2,3,3,1},{3,1,2,3},{3,1,3,2},{3,2,1,3},{3,2,3,1},{3,3,1,2},{3,3,2,1}}};
	(* deal with each set separately *)
	Map[Function[\[Lambda],
		f=Select[{#,d4[[Sequence@@#]]}&/@\[Lambda],#[[2]]=!=Automatic&];
		If[Length[f]>=2,
			(* check whether the constraint types are the same *)
			If[Length[Union[#[[2,2]]&/@f]]!=1,Message[D4SymmetryCheck::type,d4,\[Lambda][[1]],\[Lambda][[2]]]];
			(* check whether values differ *)
			\[Delta]=Chop[N[StandardDeviation[#[[2,1]]&/@f]]];
			If[\[Delta]!=0,Message[D4SymmetryCheck::ovcst,d4,\[Lambda][[1]],\[Delta]]];
			d4x=ReplacePart[d4x,Append[(#[[1]]->Automatic)&/@Rest[f],f[[1,1]]->Mean[f[[All,2]]]]]]],
		L];
	d4x]


D5SymmetryCheck[$Failed] := $Failed;
D5SymmetryCheck[d5_] := Module[{d5x,\[Delta],L,f},
	d5x=d5;
	(* sets of equivalent entries *)
	L={{{1,1,1,1,2},{1,1,1,2,1},{1,1,2,1,1},{1,2,1,1,1},{2,1,1,1,1}},
       {{1,1,1,1,3},{1,1,1,3,1},{1,1,3,1,1},{1,3,1,1,1},{3,1,1,1,1}},
       {{1,2,2,2,2},{2,1,2,2,2},{2,2,1,2,2},{2,2,2,1,2},{2,2,2,2,1}},
       {{1,3,3,3,3},{3,1,3,3,3},{3,3,1,3,3},{3,3,3,1,3},{3,3,3,3,1}},
       {{2,2,2,2,3},{2,2,2,3,2},{2,2,3,2,2},{2,3,2,2,2},{3,2,2,2,2}},
       {{2,3,3,3,3},{3,2,3,3,3},{3,3,2,3,3},{3,3,3,2,3},{3,3,3,3,2}},
       {{1,1,1,2,2},{1,1,2,1,2},{1,1,2,2,1},{1,2,1,1,2},{1,2,1,2,1},{1,2,2,1,1},{2,1,1,1,2},{2,1,1,2,1},{2,1,2,1,1},{2,2,1,1,1}},
       {{1,1,1,3,3},{1,1,3,1,3},{1,1,3,3,1},{1,3,1,1,3},{1,3,1,3,1},{1,3,3,1,1},{3,1,1,1,3},{3,1,1,3,1},{3,1,3,1,1},{3,3,1,1,1}},
       {{1,1,2,2,2},{1,2,1,2,2},{1,2,2,1,2},{1,2,2,2,1},{2,1,1,2,2},{2,1,2,1,2},{2,1,2,2,1},{2,2,1,1,2},{2,2,1,2,1},{2,2,2,1,1}},
       {{1,1,3,3,3},{1,3,1,3,3},{1,3,3,1,3},{1,3,3,3,1},{3,1,1,3,3},{3,1,3,1,3},{3,1,3,3,1},{3,3,1,1,3},{3,3,1,3,1},{3,3,3,1,1}},
       {{2,2,2,3,3},{2,2,3,2,3},{2,2,3,3,2},{2,3,2,2,3},{2,3,2,3,2},{2,3,3,2,2},{3,2,2,2,3},{3,2,2,3,2},{3,2,3,2,2},{3,3,2,2,2}},
       {{2,2,3,3,3},{2,3,2,3,3},{2,3,3,2,3},{2,3,3,3,2},{3,2,2,3,3},{3,2,3,2,3},{3,2,3,3,2},{3,3,2,2,3},{3,3,2,3,2},{3,3,3,2,2}},
       {{1,1,1,2,3},{1,1,1,3,2},{1,1,2,1,3},{1,1,2,3,1},{1,1,3,1,2},{1,1,3,2,1},{1,2,1,1,3},{1,2,1,3,1},{1,2,3,1,1},{1,3,1,1,2},{1,3,1,2,1},{1,3,2,1,1},{2,1,1,1,3},{2,1,1,3,1},{2,1,3,1,1},{2,3,1,1,1},{3,1,1,1,2},{3,1,1,2,1},{3,1,2,1,1},{3,2,1,1,1}},
       {{1,2,2,2,3},{1,2,2,3,2},{1,2,3,2,2},{1,3,2,2,2},{2,1,2,2,3},{2,1,2,3,2},{2,1,3,2,2},{2,2,1,2,3},{2,2,1,3,2},{2,2,2,1,3},{2,2,2,3,1},{2,2,3,1,2},{2,2,3,2,1},{2,3,1,2,2},{2,3,2,1,2},{2,3,2,2,1},{3,1,2,2,2},{3,2,1,2,2},{3,2,2,1,2},{3,2,2,2,1}},
       {{1,2,3,3,3},{1,3,2,3,3},{1,3,3,2,3},{1,3,3,3,2},{2,1,3,3,3},{2,3,1,3,3},{2,3,3,1,3},{2,3,3,3,1},{3,1,2,3,3},{3,1,3,2,3},{3,1,3,3,2},{3,2,1,3,3},{3,2,3,1,3},{3,2,3,3,1},{3,3,1,2,3},{3,3,1,3,2},{3,3,2,1,3},{3,3,2,3,1},{3,3,3,1,2},{3,3,3,2,1}},
       {{1,1,2,2,3},{1,1,2,3,2},{1,1,3,2,2},{1,2,1,2,3},{1,2,1,3,2},{1,2,2,1,3},{1,2,2,3,1},{1,2,3,1,2},{1,2,3,2,1},{1,3,1,2,2},{1,3,2,1,2},{1,3,2,2,1},{2,1,1,2,3},{2,1,1,3,2},{2,1,2,1,3},{2,1,2,3,1},{2,1,3,1,2},{2,1,3,2,1},{2,2,1,1,3},{2,2,1,3,1},{2,2,3,1,1},{2,3,1,1,2},{2,3,1,2,1},{2,3,2,1,1},{3,1,1,2,2},{3,1,2,1,2},{3,1,2,2,1},{3,2,1,1,2},{3,2,1,2,1},{3,2,2,1,1}},
       {{1,1,2,3,3},{1,1,3,2,3},{1,1,3,3,2},{1,2,1,3,3},{1,2,3,1,3},{1,2,3,3,1},{1,3,1,2,3},{1,3,1,3,2},{1,3,2,1,3},{1,3,2,3,1},{1,3,3,1,2},{1,3,3,2,1},{2,1,1,3,3},{2,1,3,1,3},{2,1,3,3,1},{2,3,1,1,3},{2,3,1,3,1},{2,3,3,1,1},{3,1,1,2,3},{3,1,1,3,2},{3,1,2,1,3},{3,1,2,3,1},{3,1,3,1,2},{3,1,3,2,1},{3,2,1,1,3},{3,2,1,3,1},{3,2,3,1,1},{3,3,1,1,2},{3,3,1,2,1},{3,3,2,1,1}},
       {{1,2,2,3,3},{1,2,3,2,3},{1,2,3,3,2},{1,3,2,2,3},{1,3,2,3,2},{1,3,3,2,2},{2,1,2,3,3},{2,1,3,2,3},{2,1,3,3,2},{2,2,1,3,3},{2,2,3,1,3},{2,2,3,3,1},{2,3,1,2,3},{2,3,1,3,2},{2,3,2,1,3},{2,3,2,3,1},{2,3,3,1,2},{2,3,3,2,1},{3,1,2,2,3},{3,1,2,3,2},{3,1,3,2,2},{3,2,1,2,3},{3,2,1,3,2},{3,2,2,1,3},{3,2,2,3,1},{3,2,3,1,2},{3,2,3,2,1},{3,3,1,2,2},{3,3,2,1,2},{3,3,2,2,1}}};
	(* deal with each set separately *)
	Map[Function[\[Lambda],
		f=Select[{#,d5[[Sequence@@#]]}&/@\[Lambda],#[[2]]=!=Automatic&];
		If[Length[f]>=2,
			(* check whether the constraint types are the same *)
			If[Length[Union[#[[2,2]]&/@f]]!=1,Message[D5SymmetryCheck::type,d5,\[Lambda][[1]],\[Lambda][[2]]]];
			(* check whether values differ *)
			\[Delta]=Chop[N[StandardDeviation[#[[2,1]]&/@f]]];
			If[\[Delta]!=0,Message[D5SymmetryCheck::ovcst,d5,\[Lambda][[1]],\[Delta]]];
			d5x=ReplacePart[d5x,Append[(#[[1]]->Automatic)&/@Rest[f],f[[1,1]]->Mean[f[[All,2]]]]]]],
		L];
	d5x]


(* ::Text:: *)
(*check Laplace constraints:*)


D2LaplaceCheck::ovcst="The second derivative tensor `2` is over-constrained by violating `1`."
D3LaplaceCheck::ovcst="The third derivative tensor `2` is over-constrained by violating `1`."
D4LaplaceCheck::ovcst="The fourth derivative tensor `2` is over-constrained by violating `1`."
D5LaplaceCheck::ovcst="The fifth derivative tensor `2` is over-constrained by violating `1`."


laplacecheck[{{a_?NumericQ,-1},{b_?NumericQ,-1},{c_?NumericQ,-1}}] := Chop[N[a+b+c]]>=0
laplacecheck[{{a_?NumericQ,-1},{b_?NumericQ,-1},{c_?NumericQ, 0}}] := Chop[N[a+b+c]]>=0
laplacecheck[{{a_?NumericQ,-1},{b_?NumericQ,-1},{c_?NumericQ, 1}}] := True
laplacecheck[{{a_?NumericQ,-1},{b_?NumericQ, 0},{c_?NumericQ, 0}}] := Chop[N[a+b+c]]>=0
laplacecheck[{{a_?NumericQ,-1},{b_?NumericQ, 0},{c_?NumericQ, 1}}] := True
laplacecheck[{{a_?NumericQ,-1},{b_?NumericQ, 1},{c_?NumericQ, 1}}] := True
laplacecheck[{{a_?NumericQ, 0},{b_?NumericQ, 0},{c_?NumericQ, 0}}] := Chop[N[a+b+c]]==0
laplacecheck[{{a_?NumericQ, 0},{b_?NumericQ, 0},{c_?NumericQ, 1}}] := Chop[N[a+b+c]]<=0
laplacecheck[{{a_?NumericQ, 0},{b_?NumericQ, 1},{c_?NumericQ, 1}}] := Chop[N[a+b+c]]<=0
laplacecheck[{{a_?NumericQ, 1},{b_?NumericQ, 1},{c_?NumericQ, 1}}] := Chop[N[a+b+c]]<=0
LaplaceCheck[{a_,b_,c_}]:=laplacecheck[SortBy[{a,b,c},Last]]


D2LaplaceCheck[$Failed] := $Failed
D2LaplaceCheck[d2_] := Module[{Z,L,\[CapitalDelta]2},
  \[CapitalDelta]2=d2;
  (* sets of entries which must sum to zero *)
  Z={{{1,1},{2,2},{3,3}}};
  (* deal with each set separately *)
  Map[Function[\[Lambda],
    If[!MemberQ[L=\[CapitalDelta]2[[Sequence@@#]]&/@\[Lambda],Automatic],
      If[!LaplaceCheck[L],
        Message[D2LaplaceCheck::ovcst,Total[Subscript[\[Delta], StringJoin[#]]&/@Map[{"x","y","z"}[[#]]&,\[Lambda],{2}]]==0,d2];
        \[CapitalDelta]2[[Sequence@@\[Lambda][[1]]]]=Automatic]]],
    Z];
  \[CapitalDelta]2]


D3LaplaceCheck[$Failed] := $Failed
D3LaplaceCheck[d3_] := Module[{Z,L,\[CapitalDelta]3},
  \[CapitalDelta]3=d3;
  (* sets of entries which must sum to zero *)
  Z={{{1,1,1},{1,2,2},{1,3,3}},
     {{2,2,2},{1,1,2},{2,3,3}},
     {{3,3,3},{1,1,3},{2,2,3}}};
  (* deal with each set separately *)
  Map[Function[\[Lambda],
    If[!MemberQ[L=\[CapitalDelta]3[[Sequence@@#]]&/@\[Lambda],Automatic],
      If[!LaplaceCheck[L],
        Message[D3LaplaceCheck::ovcst,Total[Subscript[\[Delta], StringJoin[#]]&/@Map[{"x","y","z"}[[#]]&,\[Lambda],{2}]]==0,d3];
        \[CapitalDelta]3[[Sequence@@\[Lambda][[1]]]]=Automatic]]],
    Z];
  \[CapitalDelta]3]


D4LaplaceCheck[$Failed] := $Failed
D4LaplaceCheck[d4_] := Module[{Z,L,\[CapitalDelta]4},
  \[CapitalDelta]4=d4;
  (* sets of entries which must sum to zero *)
  Z={{{1,1,1,1},{1,1,2,2},{1,1,3,3}},
     {{2,2,2,2},{1,1,2,2},{2,2,3,3}},
     {{3,3,3,3},{1,1,3,3},{2,2,3,3}},
     {{1,1,2,3},{2,2,2,3},{2,3,3,3}},
     {{1,2,2,3},{1,1,1,3},{1,3,3,3}},
     {{1,2,3,3},{1,1,1,2},{1,2,2,2}}};
  (* deal with each set separately *)
  Map[Function[\[Lambda],
    If[!MemberQ[L=\[CapitalDelta]4[[Sequence@@#]]&/@\[Lambda],Automatic],
      If[!LaplaceCheck[L],
        Message[D4LaplaceCheck::ovcst,Total[Subscript[\[Delta], StringJoin[#]]&/@Map[{"x","y","z"}[[#]]&,\[Lambda],{2}]]==0,d4];
        \[CapitalDelta]4[[Sequence@@\[Lambda][[1]]]]=Automatic]]],
    Z];
  \[CapitalDelta]4]


D5LaplaceCheck[$Failed] := $Failed
D5LaplaceCheck[d5_] := Module[{Z,L,\[CapitalDelta]5},
  \[CapitalDelta]5=d5;
  (* sets of entries which must sum to zero *)
  Z={{{1,1,1,1,1},{1,1,1,2,2},{1,1,1,3,3}},
     {{2,2,2,2,2},{1,1,2,2,2},{2,2,2,3,3}},
     {{3,3,3,3,3},{1,1,3,3,3},{2,2,3,3,3}},
     {{1,1,1,1,2},{1,1,2,2,2},{1,1,2,3,3}},
     {{1,1,1,1,3},{1,1,3,3,3},{1,1,2,2,3}},
     {{1,2,2,2,2},{1,1,1,2,2},{1,2,2,3,3}},
     {{2,2,2,2,3},{2,2,3,3,3},{1,1,2,2,3}},
     {{1,3,3,3,3},{1,1,1,3,3},{1,2,2,3,3}},
     {{2,3,3,3,3},{2,2,2,3,3},{1,1,2,3,3}},
     {{1,2,3,3,3},{1,1,1,2,3},{1,2,2,2,3}}};
  (* deal with each set separately *)
  Map[Function[\[Lambda],
    If[!MemberQ[L=\[CapitalDelta]5[[Sequence@@#]]&/@\[Lambda],Automatic],
      If[!LaplaceCheck[L],
        Message[D5LaplaceCheck::ovcst,Total[Subscript[\[Delta], StringJoin[#]]&/@Map[{"x","y","z"}[[#]]&,\[Lambda],{2}]]==0,d5];
        \[CapitalDelta]5[[Sequence@@\[Lambda][[1]]]]=Automatic]]],
    Z];
  \[CapitalDelta]5]


(* ::Text:: *)
(*given a point&derivatives specification, check it and expand it to standard form:*)


ExpandConstraint::npara="point specifications `1` is not a list of length 1 to `2`."


ExpandConstraint[c_List,maxderiv_]:=
  If[!(1<=Length[c]<=maxderiv+2),Message[ExpandConstraint::npara, c, maxderiv+2];$Failed,
    {ExpandPointSpecifier[c[[1]]],
     ExpandD0Constraint[If[Length[c]>=2, c[[2]], Automatic]],
     ExpandD1Constraint[If[Length[c]>=3, c[[3]], Automatic]],
     D2LaplaceCheck@D2SymmetryCheck@ExpandD2Constraint[If[Length[c]>=4, c[[4]], Automatic]],
     D3LaplaceCheck@D3SymmetryCheck@ExpandD3Constraint[If[Length[c]>=5, c[[5]], Automatic]],
     D4LaplaceCheck@D4SymmetryCheck@ExpandD4Constraint[If[Length[c]>=6, c[[6]], Automatic]],
     D5LaplaceCheck@D5SymmetryCheck@ExpandD5Constraint[If[Length[c]>=7, c[[7]], Automatic]]}]


(* ::Text:: *)
(*determine whether or not a constraint is valid:*)


ValidConstraint[n_,c_]:=
	Length[c]===2\[And]
	VectorQ[c[[1]],NumericQ]\[And]
	Length[c[[1]]]===n\[And]
	(NumericQ[c[[2]]]\[Or]c[[2]]===Automatic\[Or](Length[c[[2]]]===2\[And](NumericQ[c[[2,1]]]\[Or]c[[2,1]]===Automatic)\[And]MemberQ[{-1,0,1},c[[2,2]]]))


SetAttributes[ExpandPointSpecifier,{Locked,ReadProtected}]
SetAttributes[dspecQ,{Locked,ReadProtected}]
SetAttributes[ExpandD0Constraint,{Locked,ReadProtected}]
SetAttributes[ExpandD1Constraint,{Locked,ReadProtected}]
SetAttributes[ExpandD2Constraint,{Locked,ReadProtected}]
SetAttributes[ExpandD3Constraint,{Locked,ReadProtected}]
SetAttributes[ExpandD4Constraint,{Locked,ReadProtected}]
SetAttributes[ExpandD5Constraint,{Locked,ReadProtected}]
SetAttributes[D2SymmetryCheck,{Locked,ReadProtected}]
SetAttributes[D2LaplaceCheck,{Locked,ReadProtected}]
SetAttributes[D3SymmetryCheck,{Locked,ReadProtected}]
SetAttributes[D3LaplaceCheck,{Locked,ReadProtected}]
SetAttributes[D4SymmetryCheck,{Locked,ReadProtected}]
SetAttributes[D4LaplaceCheck,{Locked,ReadProtected}]
SetAttributes[D5SymmetryCheck,{Locked,ReadProtected}]
SetAttributes[D5LaplaceCheck,{Locked,ReadProtected}]
SetAttributes[ExpandConstraint,{Locked,ReadProtected}]
SetAttributes[ValidConstraint,{Locked,ReadProtected}]


(* ::Subsubsection::Closed:: *)
(*transformations*)


(* ::Text:: *)
(*given a list of derivatives calculated with least redundancy, make the full tensors by using symmetry and Laplace's equation:*)


ExpandDerivatives[\[Phi]_] := {
	\[Phi][[1]],
	\[Phi][[2]],
	If[\[Phi][[3]]===Null,Null,{{\[Phi][[3,1]],\[Phi][[3,2]],\[Phi][[3,3]]},{\[Phi][[3,2]],\[Phi][[3,4]],\[Phi][[3,5]]},{\[Phi][[3,3]],\[Phi][[3,5]],-\[Phi][[3,1]]-\[Phi][[3,4]]}}],
	If[\[Phi][[4]]===Null,Null,{{{-\[Phi][[4,4]]-\[Phi][[4,5]],\[Phi][[4,1]],\[Phi][[4,2]]},{\[Phi][[4,1]],\[Phi][[4,4]],\[Phi][[4,7]]},{\[Phi][[4,2]],\[Phi][[4,7]],\[Phi][[4,5]]}},{{\[Phi][[4,1]],\[Phi][[4,4]],\[Phi][[4,7]]},{\[Phi][[4,4]],-\[Phi][[4,1]]-\[Phi][[4,6]],\[Phi][[4,3]]},{\[Phi][[4,7]],\[Phi][[4,3]],\[Phi][[4,6]]}},{{\[Phi][[4,2]],\[Phi][[4,7]],\[Phi][[4,5]]},{\[Phi][[4,7]],\[Phi][[4,3]],\[Phi][[4,6]]},{\[Phi][[4,5]],\[Phi][[4,6]],-\[Phi][[4,2]]-\[Phi][[4,3]]}}}],
    If[\[Phi][[5]]===Null,Null,{{{{-\[Phi][[5,3]]-\[Phi][[5,4]],\[Phi][[5,1]],\[Phi][[5,2]]},{\[Phi][[5,1]],\[Phi][[5,3]],-\[Phi][[5,7]]-\[Phi][[5,9]]},{\[Phi][[5,2]],-\[Phi][[5,7]]-\[Phi][[5,9]],\[Phi][[5,4]]}},{{\[Phi][[5,1]],\[Phi][[5,3]],-\[Phi][[5,7]]-\[Phi][[5,9]]},{\[Phi][[5,3]],\[Phi][[5,5]],-\[Phi][[5,2]]-\[Phi][[5,6]]},{-\[Phi][[5,7]]-\[Phi][[5,9]],-\[Phi][[5,2]]-\[Phi][[5,6]],-\[Phi][[5,1]]-\[Phi][[5,5]]}},{{\[Phi][[5,2]],-\[Phi][[5,7]]-\[Phi][[5,9]],\[Phi][[5,4]]},{-\[Phi][[5,7]]-\[Phi][[5,9]],-\[Phi][[5,2]]-\[Phi][[5,6]],-\[Phi][[5,1]]-\[Phi][[5,5]]},{\[Phi][[5,4]],-\[Phi][[5,1]]-\[Phi][[5,5]],\[Phi][[5,6]]}}},{{{\[Phi][[5,1]],\[Phi][[5,3]],-\[Phi][[5,7]]-\[Phi][[5,9]]},{\[Phi][[5,3]],\[Phi][[5,5]],-\[Phi][[5,2]]-\[Phi][[5,6]]},{-\[Phi][[5,7]]-\[Phi][[5,9]],-\[Phi][[5,2]]-\[Phi][[5,6]],-\[Phi][[5,1]]-\[Phi][[5,5]]}},{{\[Phi][[5,3]],\[Phi][[5,5]],-\[Phi][[5,2]]-\[Phi][[5,6]]},{\[Phi][[5,5]],-\[Phi][[5,3]]-\[Phi][[5,8]],\[Phi][[5,7]]},{-\[Phi][[5,2]]-\[Phi][[5,6]],\[Phi][[5,7]],\[Phi][[5,8]]}},{{-\[Phi][[5,7]]-\[Phi][[5,9]],-\[Phi][[5,2]]-\[Phi][[5,6]],-\[Phi][[5,1]]-\[Phi][[5,5]]},{-\[Phi][[5,2]]-\[Phi][[5,6]],\[Phi][[5,7]],\[Phi][[5,8]]},{-\[Phi][[5,1]]-\[Phi][[5,5]],\[Phi][[5,8]],\[Phi][[5,9]]}}},{{{\[Phi][[5,2]],-\[Phi][[5,7]]-\[Phi][[5,9]],\[Phi][[5,4]]},{-\[Phi][[5,7]]-\[Phi][[5,9]],-\[Phi][[5,2]]-\[Phi][[5,6]],-\[Phi][[5,1]]-\[Phi][[5,5]]},{\[Phi][[5,4]],-\[Phi][[5,1]]-\[Phi][[5,5]],\[Phi][[5,6]]}},{{-\[Phi][[5,7]]-\[Phi][[5,9]],-\[Phi][[5,2]]-\[Phi][[5,6]],-\[Phi][[5,1]]-\[Phi][[5,5]]},{-\[Phi][[5,2]]-\[Phi][[5,6]],\[Phi][[5,7]],\[Phi][[5,8]]},{-\[Phi][[5,1]]-\[Phi][[5,5]],\[Phi][[5,8]],\[Phi][[5,9]]}},{{\[Phi][[5,4]],-\[Phi][[5,1]]-\[Phi][[5,5]],\[Phi][[5,6]]},{-\[Phi][[5,1]]-\[Phi][[5,5]],\[Phi][[5,8]],\[Phi][[5,9]]},{\[Phi][[5,6]],\[Phi][[5,9]],-\[Phi][[5,4]]-\[Phi][[5,8]]}}}}],
    If[\[Phi][[6]]===Null,Null,{{{{{-\[Phi][[6,1]]-\[Phi][[6,3]],-\[Phi][[6,4]]-\[Phi][[6,6]],-\[Phi][[6,5]]-\[Phi][[6,7]]},{-\[Phi][[6,4]]-\[Phi][[6,6]],\[Phi][[6,1]],\[Phi][[6,2]]},{-\[Phi][[6,5]]-\[Phi][[6,7]],\[Phi][[6,2]],\[Phi][[6,3]]}},{{-\[Phi][[6,4]]-\[Phi][[6,6]],\[Phi][[6,1]],\[Phi][[6,2]]},{\[Phi][[6,1]],\[Phi][[6,4]],\[Phi][[6,5]]},{\[Phi][[6,2]],\[Phi][[6,5]],\[Phi][[6,6]]}},{{-\[Phi][[6,5]]-\[Phi][[6,7]],\[Phi][[6,2]],\[Phi][[6,3]]},{\[Phi][[6,2]],\[Phi][[6,5]],\[Phi][[6,6]]},{\[Phi][[6,3]],\[Phi][[6,6]],\[Phi][[6,7]]}}},{{{-\[Phi][[6,4]]-\[Phi][[6,6]],\[Phi][[6,1]],\[Phi][[6,2]]},{\[Phi][[6,1]],\[Phi][[6,4]],\[Phi][[6,5]]},{\[Phi][[6,2]],\[Phi][[6,5]],\[Phi][[6,6]]}},{{\[Phi][[6,1]],\[Phi][[6,4]],\[Phi][[6,5]]},{\[Phi][[6,4]],-\[Phi][[6,1]]-\[Phi][[6,9]],\[Phi][[6,8]]},{\[Phi][[6,5]],\[Phi][[6,8]],\[Phi][[6,9]]}},{{\[Phi][[6,2]],\[Phi][[6,5]],\[Phi][[6,6]]},{\[Phi][[6,5]],\[Phi][[6,8]],\[Phi][[6,9]]},{\[Phi][[6,6]],\[Phi][[6,9]],-\[Phi][[6,2]]-\[Phi][[6,8]]}}},{{{-\[Phi][[6,5]]-\[Phi][[6,7]],\[Phi][[6,2]],\[Phi][[6,3]]},{\[Phi][[6,2]],\[Phi][[6,5]],\[Phi][[6,6]]},{\[Phi][[6,3]],\[Phi][[6,6]],\[Phi][[6,7]]}},{{\[Phi][[6,2]],\[Phi][[6,5]],\[Phi][[6,6]]},{\[Phi][[6,5]],\[Phi][[6,8]],\[Phi][[6,9]]},{\[Phi][[6,6]],\[Phi][[6,9]],-\[Phi][[6,2]]-\[Phi][[6,8]]}},{{\[Phi][[6,3]],\[Phi][[6,6]],\[Phi][[6,7]]},{\[Phi][[6,6]],\[Phi][[6,9]],-\[Phi][[6,2]]-\[Phi][[6,8]]},{\[Phi][[6,7]],-\[Phi][[6,2]]-\[Phi][[6,8]],-\[Phi][[6,3]]-\[Phi][[6,9]]}}}},{{{{-\[Phi][[6,4]]-\[Phi][[6,6]],\[Phi][[6,1]],\[Phi][[6,2]]},{\[Phi][[6,1]],\[Phi][[6,4]],\[Phi][[6,5]]},{\[Phi][[6,2]],\[Phi][[6,5]],\[Phi][[6,6]]}},{{\[Phi][[6,1]],\[Phi][[6,4]],\[Phi][[6,5]]},{\[Phi][[6,4]],-\[Phi][[6,1]]-\[Phi][[6,9]],\[Phi][[6,8]]},{\[Phi][[6,5]],\[Phi][[6,8]],\[Phi][[6,9]]}},{{\[Phi][[6,2]],\[Phi][[6,5]],\[Phi][[6,6]]},{\[Phi][[6,5]],\[Phi][[6,8]],\[Phi][[6,9]]},{\[Phi][[6,6]],\[Phi][[6,9]],-\[Phi][[6,2]]-\[Phi][[6,8]]}}},{{{\[Phi][[6,1]],\[Phi][[6,4]],\[Phi][[6,5]]},{\[Phi][[6,4]],-\[Phi][[6,1]]-\[Phi][[6,9]],\[Phi][[6,8]]},{\[Phi][[6,5]],\[Phi][[6,8]],\[Phi][[6,9]]}},{{\[Phi][[6,4]],-\[Phi][[6,1]]-\[Phi][[6,9]],\[Phi][[6,8]]},{-\[Phi][[6,1]]-\[Phi][[6,9]],-\[Phi][[6,4]]-\[Phi][[6,10]],-\[Phi][[6,5]]-\[Phi][[6,11]]},{\[Phi][[6,8]],-\[Phi][[6,5]]-\[Phi][[6,11]],\[Phi][[6,10]]}},{{\[Phi][[6,5]],\[Phi][[6,8]],\[Phi][[6,9]]},{\[Phi][[6,8]],-\[Phi][[6,5]]-\[Phi][[6,11]],\[Phi][[6,10]]},{\[Phi][[6,9]],\[Phi][[6,10]],\[Phi][[6,11]]}}},{{{\[Phi][[6,2]],\[Phi][[6,5]],\[Phi][[6,6]]},{\[Phi][[6,5]],\[Phi][[6,8]],\[Phi][[6,9]]},{\[Phi][[6,6]],\[Phi][[6,9]],-\[Phi][[6,2]]-\[Phi][[6,8]]}},{{\[Phi][[6,5]],\[Phi][[6,8]],\[Phi][[6,9]]},{\[Phi][[6,8]],-\[Phi][[6,5]]-\[Phi][[6,11]],\[Phi][[6,10]]},{\[Phi][[6,9]],\[Phi][[6,10]],\[Phi][[6,11]]}},{{\[Phi][[6,6]],\[Phi][[6,9]],-\[Phi][[6,2]]-\[Phi][[6,8]]},{\[Phi][[6,9]],\[Phi][[6,10]],\[Phi][[6,11]]},{-\[Phi][[6,2]]-\[Phi][[6,8]],\[Phi][[6,11]],-\[Phi][[6,6]]-\[Phi][[6,10]]}}}},{{{{-\[Phi][[6,5]]-\[Phi][[6,7]],\[Phi][[6,2]],\[Phi][[6,3]]},{\[Phi][[6,2]],\[Phi][[6,5]],\[Phi][[6,6]]},{\[Phi][[6,3]],\[Phi][[6,6]],\[Phi][[6,7]]}},{{\[Phi][[6,2]],\[Phi][[6,5]],\[Phi][[6,6]]},{\[Phi][[6,5]],\[Phi][[6,8]],\[Phi][[6,9]]},{\[Phi][[6,6]],\[Phi][[6,9]],-\[Phi][[6,2]]-\[Phi][[6,8]]}},{{\[Phi][[6,3]],\[Phi][[6,6]],\[Phi][[6,7]]},{\[Phi][[6,6]],\[Phi][[6,9]],-\[Phi][[6,2]]-\[Phi][[6,8]]},{\[Phi][[6,7]],-\[Phi][[6,2]]-\[Phi][[6,8]],-\[Phi][[6,3]]-\[Phi][[6,9]]}}},{{{\[Phi][[6,2]],\[Phi][[6,5]],\[Phi][[6,6]]},{\[Phi][[6,5]],\[Phi][[6,8]],\[Phi][[6,9]]},{\[Phi][[6,6]],\[Phi][[6,9]],-\[Phi][[6,2]]-\[Phi][[6,8]]}},{{\[Phi][[6,5]],\[Phi][[6,8]],\[Phi][[6,9]]},{\[Phi][[6,8]],-\[Phi][[6,5]]-\[Phi][[6,11]],\[Phi][[6,10]]},{\[Phi][[6,9]],\[Phi][[6,10]],\[Phi][[6,11]]}},{{\[Phi][[6,6]],\[Phi][[6,9]],-\[Phi][[6,2]]-\[Phi][[6,8]]},{\[Phi][[6,9]],\[Phi][[6,10]],\[Phi][[6,11]]},{-\[Phi][[6,2]]-\[Phi][[6,8]],\[Phi][[6,11]],-\[Phi][[6,6]]-\[Phi][[6,10]]}}},{{{\[Phi][[6,3]],\[Phi][[6,6]],\[Phi][[6,7]]},{\[Phi][[6,6]],\[Phi][[6,9]],-\[Phi][[6,2]]-\[Phi][[6,8]]},{\[Phi][[6,7]],-\[Phi][[6,2]]-\[Phi][[6,8]],-\[Phi][[6,3]]-\[Phi][[6,9]]}},{{\[Phi][[6,6]],\[Phi][[6,9]],-\[Phi][[6,2]]-\[Phi][[6,8]]},{\[Phi][[6,9]],\[Phi][[6,10]],\[Phi][[6,11]]},{-\[Phi][[6,2]]-\[Phi][[6,8]],\[Phi][[6,11]],-\[Phi][[6,6]]-\[Phi][[6,10]]}},{{\[Phi][[6,7]],-\[Phi][[6,2]]-\[Phi][[6,8]],-\[Phi][[6,3]]-\[Phi][[6,9]]},{-\[Phi][[6,2]]-\[Phi][[6,8]],\[Phi][[6,11]],-\[Phi][[6,6]]-\[Phi][[6,10]]},{-\[Phi][[6,3]]-\[Phi][[6,9]],-\[Phi][[6,6]]-\[Phi][[6,10]],-\[Phi][[6,7]]-\[Phi][[6,11]]}}}}}]}


(* ::Text:: *)
(*given a list of full derivative tensors and a rotation matrix, rotate all derivatives:*)


RotateDerivatives[\[Phi]_, M_] := {
	\[Phi][[1]],
    If[\[Phi][[2]]===Null,Null,Nest[Inner[Times,#,M,Plus,1]&,\[Phi][[2]],1]],
    If[\[Phi][[3]]===Null,Null,Nest[Inner[Times,#,M,Plus,1]&,\[Phi][[3]],2]],
    If[\[Phi][[4]]===Null,Null,Nest[Inner[Times,#,M,Plus,1]&,\[Phi][[4]],3]],
    If[\[Phi][[5]]===Null,Null,Nest[Inner[Times,#,M,Plus,1]&,\[Phi][[5]],4]],
    If[\[Phi][[6]]===Null,Null,Nest[Inner[Times,#,M,Plus,1]&,\[Phi][[6]],5]]}


SetAttributes[ExpandDerivatives,{Locked,ReadProtected}]
SetAttributes[RotateDerivatives,{Locked,ReadProtected}]
SetAttributes[EqualD0,{Locked,ReadProtected}]
SetAttributes[EqualD1,{Locked,ReadProtected}]
SetAttributes[EqualD2,{Locked,ReadProtected}]
SetAttributes[EqualD3,{Locked,ReadProtected}]
SetAttributes[EqualD4,{Locked,ReadProtected}]
SetAttributes[EqualD5,{Locked,ReadProtected}]
SetAttributes[ExtraConstraints,{Locked,ReadProtected}]
SetAttributes[LabFrame,{Locked,ReadProtected}]
SetAttributes[LocalFrame,{Locked,ReadProtected}]
SetAttributes[PixelRange,{Locked,ReadProtected}]


(* ::Subsection::Closed:: *)
(*periodic*)


OptimalPeriodicPattern::pixelrange="The option PixelRange->`1` is invalid."
OptimalPeriodicPattern::range="The solution exceeds the range given by PixelRange."
OptimalPeriodicPattern::chksol="The solution violates the constraints by `1`, possibly due to complex constraints or lack of convergence."
OptimalPeriodicPattern::equalderiv="The option EqualD`1`->`2` is invalid."


OptimalPeriodicPattern::invalidC0="Invalid constraint on potential."
OptimalPeriodicPattern::invalidC1="Invalid constraint on first derivatives of potential."
OptimalPeriodicPattern::invalidC2="Invalid constraint on second derivatives of potential."
OptimalPeriodicPattern::invalidC3="Invalid constraint on third derivatives of potential."
OptimalPeriodicPattern::invalidE0="Invalid equality constraint on potential."
OptimalPeriodicPattern::invalidE1="Invalid equality constraint on first derivatives of potential."
OptimalPeriodicPattern::invalidE2="Invalid equality constraint on second derivatives of potential."
OptimalPeriodicPattern::invalidE3="Invalid equality constraint on third derivatives of potential."
OptimalPeriodicPattern::invalidF="Invalid Fourier constraints `1`."
OptimalPeriodicPattern::invalidextra="Invalid ExtraConstraints->`1`."


Options[OptimalPeriodicPattern]={CoverPlane->\[Infinity],
                                 FourierResolution->Automatic,
                                 EqualD0->False,
                                 EqualD1->False,
                                 EqualD2->False,
                                 EqualD3->False,
                                 PixelRange->{0,1},
                                 Method->"InteriorPoint",
                                 Tolerance->10^-6,
                                 ExtraConstraints->{}}


(* ::Text:: *)
(*determine whether or not a constraint is valid:*)


ValidPeriodicConstraint[n_,c_]:=
	Length[c]===2\[And]
	MatrixQ[c[[1]],NumericQ]\[And]
	Dimensions[c[[1]]]==={n,n}\[And]
	ValidConstraint[n^2,{Flatten[c[[1]]],c[[2]]}]


(* ::Text:: *)
(*optimize*)


OptimalPeriodicPattern[basis_/;(MatrixQ[basis,NumericQ]\[And]Dimensions[basis]==={2,2}),
                       n_/;(IntegerQ[n]\[And]n>=1),
                       P_List,
                       F_,
                       opts:OptionsPattern[]]:=
Module[{maxderiv,pixelranges,useequalities,uselocalconstraints,computederivatives,coefficients,rotatedcoefficients,PP,d0,d1,d2,d3,mm,\[CapitalDelta]3,bi,\[Phi],\[Phi]\[Phi],\[Phi]R,C0,C1,C2,C3,B,b,\[Gamma],BB,p,ff,FF,sf,CF,\[Gamma]r,BBr,Beq,beq,Bineq,bineq,E0,E1,E2,E3,err,X},
	(* maximum derivative specifications *)
	maxderiv=3;
	(* pixel ranges *)
	pixelranges=OptionValue[PixelRange];
	If[MatchQ[pixelranges, {xl_?NumericQ,xu_?NumericQ}],  (* expand uniform specification *)
		pixelranges=Table[pixelranges,{n},{n}]];
	If[!((Dimensions[pixelranges]==={n,n,2})\[And](And@@Flatten[Map[NumericQ,pixelranges,{3}]])),  (* check validity *)
		Message[OptimalPeriodicPattern::pixelrange, pixelranges];
		Return[$Failed]];
	pixelranges=Flatten[pixelranges,1];  (* internally we use a flattened list of pixels *)
	(* expand point and derivative specifications *)
	Check[PP = ExpandConstraint[#,maxderiv]&/@P,Return[$Failed],
		{ExpandPointSpecifier::spec,
		ExpandD0Constraint::spec,
		ExpandD1Constraint::spec,
		ExpandD2Constraint::spec,
		ExpandD3Constraint::spec,
		ExpandConstraint::npara}];
	(* which derivatives are needed at all points in order to match between points? *)
	useequalities={
			Switch[OptionValue[EqualD0], False,False, True,True, LabFrame,True, LocalFrame,True,
				_,Message[OptimalPeriodicPattern::equalderiv, 0, OptionValue[EqualD0]];Return[$Failed]],
			Switch[OptionValue[EqualD1], False,False, LabFrame,True, LocalFrame,True,
				_,Message[OptimalPeriodicPattern::equalderiv, 1, OptionValue[EqualD1]];Return[$Failed]],
			Switch[OptionValue[EqualD2], False,False, LabFrame,True, LocalFrame,True,
				_,Message[OptimalPeriodicPattern::equalderiv, 2, OptionValue[EqualD2]];Return[$Failed]],
			Switch[OptionValue[EqualD3], False,False, LabFrame,True, LocalFrame,True,
				_,Message[OptimalPeriodicPattern::equalderiv, 3, OptionValue[EqualD3]];Return[$Failed]]};
	(* which derivatives are needed specifically at each point? *)
	uselocalconstraints=Apply[Or,Map[(#=!=Automatic)&,{{#[[2]]},Flatten[#[[3]]],Flatten[#[[4]]],Flatten[#[[5]]]}&/@PP,{3}],{2}];
	(* merge: which derivatives need to be computed? *)
	computederivatives=MapThread[Or,{#,useequalities}]&/@uselocalconstraints;
	(* compute the potential and derivative coefficients at the points *)
	bi=Inverse[basis]\[Transpose]//N;
	If[Length[P]>0,
		coefficients=ExpandDerivatives/@MapThread[PeriodicPotentialCoefficients[bi,n,#1[[1,1]]//N,#2,
			Evaluate[FilterRules[{opts,Options[OptimalPeriodicPattern]}, Options[PeriodicPotentialCoefficients]]]]&,
			{PP,computederivatives}];
		(* rotate the derivatives into the local frames attached to the points *)
		rotatedcoefficients=MapThread[RotateDerivatives[#1,#2[[1,2]]]&, {coefficients,PP}];
		(* make lists of local constraints (all referring to the local frames!) *)
		C0=Select[MapThread[Function[{p,c,d}, If[d[[1]],{c[[1]],p[[2]]}]], {PP,rotatedcoefficients,computederivatives}],#=!=Null&];
		C1=Select[MapThread[Function[{p,c,d}, If[d[[2]],{c[[2]],p[[3]]}\[Transpose]]], {PP,rotatedcoefficients,computederivatives}],#=!=Null&];
		C2=Select[MapThread[Function[{p,c,d}, If[d[[3]],{Flatten[c[[3]],1],Flatten[p[[4]],1]}\[Transpose]]], {PP,rotatedcoefficients,computederivatives}],#=!=Null&];
		C3=Select[MapThread[Function[{p,c,d}, If[d[[4]],{Flatten[c[[4]],2],Flatten[p[[5]],2]}\[Transpose]]], {PP,rotatedcoefficients,computederivatives}],#=!=Null&];
		If[Length[C1]>0,C1=Flatten[C1,1]];
		If[Length[C2]>0,C2=Flatten[C2,1]];
		If[Length[C3]>0,C3=Flatten[C3,1]],
	    C0=C1=C2=C3={}];
	(* equality constraints *)
	If[Length[P]>1,
		E0=Switch[OptionValue[EqualD0],
			False, {},
			LabFrame, {#,0}&/@Table[coefficients[[j,1]]-coefficients[[1,1]],{j,2,Length[P]}],
			True, {#,0}&/@Table[coefficients[[j,1]]-coefficients[[1,1]],{j,2,Length[P]}],   (* same as lab frame *)
			LocalFrame, {#,0}&/@Table[rotatedcoefficients[[j,1]]-rotatedcoefficients[[1,1]],{j,2,Length[P]}],   (* same as lab frame *)
			_, Message[OptimalPeriodicPattern::equalderiv, 0, OptionValue[EqualD0]]; Return[$Failed]];
		E1=Switch[OptionValue[EqualD1],
			False, {},
			LabFrame, {#,0}&/@Flatten[Table[coefficients[[j,2]]-coefficients[[1,2]],{j,2,Length[P]}],1],
			LocalFrame, {#,0}&/@Flatten[Table[rotatedcoefficients[[j,2]]-rotatedcoefficients[[1,2]],{j,2,Length[P]}],1],
			_, Message[OptimalPeriodicPattern::equalderiv, 1, OptionValue[EqualD1]]; Return[$Failed]];
		E2=Switch[OptionValue[EqualD2],
			False, {},
			LabFrame, {#,0}&/@Flatten[Table[selectD2[coefficients[[j,3]]-coefficients[[1,3]]],{j,2,Length[P]}],1],
			LocalFrame, {#,0}&/@Flatten[Table[selectD2[rotatedcoefficients[[j,3]]-rotatedcoefficients[[1,3]]],{j,2,Length[P]}],1],
			_, Message[OptimalPeriodicPattern::equalderiv, 2, OptionValue[EqualD2]]; Return[$Failed]];
		E3=Switch[OptionValue[EqualD3],
			False, {},
			LabFrame, {#,0}&/@Flatten[Table[selectD3[coefficients[[j,4]]-coefficients[[1,4]]],{j,2,Length[P]}],1],
			LocalFrame, {#,0}&/@Flatten[Table[selectD3[rotatedcoefficients[[j,4]]-rotatedcoefficients[[1,4]]],{j,2,Length[P]}],1],
			_, Message[OptimalPeriodicPattern::equalderiv, 3, OptionValue[EqualD3]]; Return[$Failed]],
		E0=E1=E2=E3={}];
	(* direct constraints on Fourier modes *)
	FF=If[F===Automatic\[Or]F==={},{},
		If[VectorQ[F,MatchQ[#,{{kx_?NumericQ,ky_?NumericQ},v_}]&],Select[F,#[[2]]=!=Automatic&],
		 Message[OptimalPeriodicPattern::invalidF,F];Return[$Failed]]];
	CF=If[Length[FF]>0,
		sf=Max[1,FF\[Transpose][[1]]//Abs//Max];
		ff=FourierPattern[{n,sf}];
		{ff[[#[[1,1]]+sf+1,#[[1,2]]+sf+1]],#[[2]]}&/@FF,
		{}];
	(* extra constraints *)
	X = OptionValue[ExtraConstraints];
	(* check the form of all the constraints *)
	If[!VectorQ[C0, ValidConstraint[n^2,#]&], Message[OptimalPeriodicPattern::invalidC0]; Return[$Failed]];
	If[!VectorQ[C1, ValidConstraint[n^2,#]&], Message[OptimalPeriodicPattern::invalidC1]; Return[$Failed]];
	If[!VectorQ[C2, ValidConstraint[n^2,#]&], Message[OptimalPeriodicPattern::invalidC2]; Return[$Failed]];
	If[!VectorQ[C3, ValidConstraint[n^2,#]&], Message[OptimalPeriodicPattern::invalidC3]; Return[$Failed]];
	If[!VectorQ[E0, ValidConstraint[n^2,#]&], Message[OptimalPeriodicPattern::invalidE0]; Return[$Failed]];
	If[!VectorQ[E1, ValidConstraint[n^2,#]&], Message[OptimalPeriodicPattern::invalidE1]; Return[$Failed]];
	If[!VectorQ[E2, ValidConstraint[n^2,#]&], Message[OptimalPeriodicPattern::invalidE2]; Return[$Failed]];
	If[!VectorQ[E3, ValidConstraint[n^2,#]&], Message[OptimalPeriodicPattern::invalidE3]; Return[$Failed]];
	If[!VectorQ[CF, ValidConstraint[n^2,#]&], Message[OptimalPeriodicPattern::invalidF, F]; Return[$Failed]];
	If[!VectorQ[X, ValidPeriodicConstraint[n,#]&], Message[OptimalPeriodicPattern::invalidextra, X]; Return[$Failed]];
	(* join the constraints *)
	{B,b}=Select[Join[C0,C1,C2,C3,E0,E1,E2,E3,CF,X],#[[2]]=!=Automatic&]\[Transpose];
	(* if constraint type is unspecified then it is an equality constraint *)
	b=Replace[b,\[Zeta]_?NumericQ->{\[Zeta],0},{1}];
	(* separate into equality and inequality constraints *)
	BB=Select[{B,b}\[Transpose],#[[2,2]]==0&];{Beq,beq}=If[BB=={},{{},{}},BB\[Transpose]];
	BB=Select[{B,b}\[Transpose],#[[2,2]]!=0&];{Bineq,bineq}=If[BB=={},{{},{}},BB\[Transpose]];
	(* inhomogeneous solution *)
	\[Gamma]=PseudoInverse[Beq].(beq\[Transpose][[1]]);
	\[Gamma]r=Re[\[Gamma]];
	(* constraint equations in space of homogeneous solutions *)
	BB=Beq-KroneckerProduct[(beq\[Transpose][[1]]),\[Gamma]r]/\[Gamma]r.\[Gamma]r;
	BBr=Re[BB];
	(* find optimum *)
	p=LinearProgramming[-\[Gamma]r,
		Join[BBr,Bineq],
		Join[Table[{0,0},{Length[BBr]}],bineq],
		pixelranges,
		Evaluate[FilterRules[{opts,Options[OptimalPeriodicPattern]}, Options[LinearProgramming]]]];
	(* check solution *)
	If[(err=Sqrt[Re[Conjugate[BB.p].(BB.p)/p.p]])>OptionValue[Tolerance],
		Message[OptimalPeriodicPattern::chksol, err]];
	If[Not[And@@MapThread[#2[[1]]-OptionValue[Tolerance]<=#1<=#2[[2]]+OptionValue[Tolerance]&,{p,pixelranges}]],
		Message[OptimalPeriodicPattern::range]];
	(* return the optimum and the proportionality constant *)
	{Partition[p,n],p.\[Gamma]r/\[Gamma]r.\[Gamma]r,
	{basis,n,P,F},
	FilterRules[{opts,Options[OptimalPeriodicPattern]}, Options[OptimalPeriodicPattern]]}]


SetAttributes[OptimalPeriodicPattern,{Locked,ReadProtected}]
SetAttributes[ValidPeriodicConstraint,{Locked,ReadProtected}]


(* ::Subsection::Closed:: *)
(*non-periodic*)


OptimalFinitePattern::pixelrange="The option PixelRange->`1` is invalid."
OptimalFinitePattern::range="The solution exceeds the range given by PixelRange."
OptimalFinitePattern::equalderiv="The option EqualD`1`->`2` is invalid."
OptimalFinitePattern::pixel="The pixel specification `1` is not a list of numerical pixels."


OptimalFinitePattern::invalidC0="Invalid constraint on potential."
OptimalFinitePattern::invalidC1="Invalid constraint on first derivatives of potential."
OptimalFinitePattern::invalidC2="Invalid constraint on second derivatives of potential."
OptimalFinitePattern::invalidC3="Invalid constraint on third derivatives of potential."
OptimalFinitePattern::invalidC4="Invalid constraint on fourth derivatives of potential."
OptimalFinitePattern::invalidC5="Invalid constraint on fifth derivatives of potential."
OptimalFinitePattern::invalidE0="Invalid equality constraint on potential."
OptimalFinitePattern::invalidE1="Invalid equality constraint on first derivatives of potential."
OptimalFinitePattern::invalidE2="Invalid equality constraint on second derivatives of potential."
OptimalFinitePattern::invalidE3="Invalid equality constraint on third derivatives of potential."
OptimalFinitePattern::invalidE4="Invalid equality constraint on fourth derivatives of potential."
OptimalFinitePattern::invalidE5="Invalid equality constraint on fifth derivatives of potential."
OptimalFinitePattern::invalidextra="Invalid ExtraConstraints->`1`."


(* ::Text:: *)
(*given a list of pixels, optimize their potentials to fit the constraints*)


Options[OptimalFinitePattern]={Method->"InteriorPoint",
                           Tolerance->10^-6,
                           EqualD0->False,
                           EqualD1->False,
                           EqualD2->False,
                           EqualD3->False,
                           EqualD4->False,
                           EqualD5->False,
                           PixelRange->{0,1},
                           CoverPlane->{\[Infinity],0},
                           ExtraConstraints->{},
                           FastPotential->False}


(* ::Text:: *)
(*select independent components for constraining derivatives to be equal:*)


selectD2[A_]:=Flatten[A,1][[{1,2,3,5,6}]]
selectD3[A_]:=Flatten[A,2][[{2,3,15,5,9,18,6}]]
selectD4[A_]:=Flatten[A,2][[{2,3,5,9,14,27,42,45,54}]]
selectD5[A_]:=Flatten[A,2][[{5,6,9,14,15,18,27,42,45,126,135}]]


OptimalFinitePattern[pixels_,
                 P_List,
                 opts:OptionsPattern[]]:=
Module[{maxderiv,n,pixelranges,useequalities,uselocalconstraints,computederivatives,coefficients,rotatedcoefficients,PP,usederivs,\[Delta],\[Phi]0,\[Phi],C0,C1,C2,C3,C4,C5,E0,E1,E2,E3,E4,E5,X,B,b,BB,Beq,beq,Bineq,bineq,\[Gamma],p},
	(* maximum allowed derivative specifications *)
	maxderiv=5;
	(* check input *)
	If[!VectorQ[pixels,NumericalPixelQ],
		Message[OptimalFinitePattern::pixel,pixels]; Return[$Failed]];
	n = Length[pixels];
	(* pixel ranges *)
	pixelranges=OptionValue[PixelRange];
	If[MatchQ[pixelranges, {xl_?NumericQ,xu_?NumericQ}],  (* expand uniform specification *)
		pixelranges=Table[pixelranges,{Length[pixels]}]];
	If[!((Dimensions[pixelranges]==={Length[pixels],2})\[And]MatrixQ[pixelranges,NumericQ]),  (* check validity *)
		Message[OptimalFinitePattern::pixelrange, pixelranges];
		Return[$Failed]];
	(* expand point and derivative specifications *)
	Check[PP = ExpandConstraint[#,maxderiv]&/@P,Return[$Failed],
		{ExpandPointSpecifier::spec,
			ExpandD0Constraint::spec,
			ExpandD1Constraint::spec,
			ExpandD2Constraint::spec,
			ExpandD3Constraint::spec,
			ExpandD4Constraint::spec,
			ExpandD5Constraint::spec,
			ExpandConstraint::npara}];
	(* which derivatives are needed at all points in order to match between points? *)
	useequalities={
			Switch[OptionValue[EqualD0], False,False, True,True, LabFrame,True, LocalFrame,True,
				_,Message[OptimalFinitePattern::equalderiv, 0, OptionValue[EqualD0]];Return[$Failed]],
			Switch[OptionValue[EqualD1], False,False, LabFrame,True, LocalFrame,True,
				_,Message[OptimalFinitePattern::equalderiv, 1, OptionValue[EqualD1]];Return[$Failed]],
			Switch[OptionValue[EqualD2], False,False, LabFrame,True, LocalFrame,True,
				_,Message[OptimalFinitePattern::equalderiv, 2, OptionValue[EqualD2]];Return[$Failed]],
			Switch[OptionValue[EqualD3], False,False, LabFrame,True, LocalFrame,True,
				_,Message[OptimalFinitePattern::equalderiv, 3, OptionValue[EqualD3]];Return[$Failed]],
			Switch[OptionValue[EqualD4], False,False, LabFrame,True, LocalFrame,True,
				_,Message[OptimalFinitePattern::equalderiv, 4, OptionValue[EqualD4]];Return[$Failed]],
			Switch[OptionValue[EqualD5], False,False, LabFrame,True, LocalFrame,True,
				_,Message[OptimalFinitePattern::equalderiv, 5, OptionValue[EqualD5]];Return[$Failed]]};
	(* which derivatives are needed specifically at each point? *)
	uselocalconstraints=Apply[Or,Map[(#=!=Automatic)&,{{#[[2]]},Flatten[#[[3]]],Flatten[#[[4]]],Flatten[#[[5]]],Flatten[#[[6]]],Flatten[#[[7]]]}&/@PP,{3}],{2}];
	(* merge: which derivatives need to be computed? *)
	computederivatives=MapThread[Or,{#,useequalities}]&/@uselocalconstraints;
	(* compute the needed potential and derivative coefficients at the points, and bring them to standard form *)
	coefficients=ExpandDerivatives[{#\[Transpose][[1]],#\[Transpose][[2]]\[Transpose],#\[Transpose][[3]]\[Transpose],#\[Transpose][[4]]\[Transpose],#\[Transpose][[5]]\[Transpose],#\[Transpose][[6]]\[Transpose]}]&/@Outer[PixelPotential[#2, #1[[1,1,1]]//N, #1[[2]],Evaluate[FilterRules[{opts,Options[OptimalFinitePattern]}, Options[PixelPotential]]]]&,
		{PP,computederivatives}\[Transpose], pixels, 1];
    (* rotate the derivative coefficients into the local frames attached to the points *)
    rotatedcoefficients=MapThread[RotateDerivatives[#1,#2[[1,2]]]&, {coefficients,PP}];
	rotatedcoefficients=Map[Transpose[#,RotateRight[Range[ArrayDepth[#]]]]&,rotatedcoefficients,{2}];
	(* make lists of local constraints (all referring to the local frames!) *)
	C0=MapThread[{#2[[1]],#1[[2]]}&, {PP,rotatedcoefficients}];
	C1=Flatten[MapThread[{#2[[2]],#1[[3]]}\[Transpose]&, {PP,rotatedcoefficients}],1];
	C2=Flatten[MapThread[{Flatten[#2[[3]],1],Flatten[#1[[4]],1]}\[Transpose]&, {PP,rotatedcoefficients}],1];
	C3=Flatten[MapThread[{Flatten[#2[[4]],2],Flatten[#1[[5]],2]}\[Transpose]&, {PP,rotatedcoefficients}],1];
	C4=Flatten[MapThread[{Flatten[#2[[5]],3],Flatten[#1[[6]],3]}\[Transpose]&, {PP,rotatedcoefficients}],1];
	C5=Flatten[MapThread[{Flatten[#2[[6]],4],Flatten[#1[[7]],4]}\[Transpose]&, {PP,rotatedcoefficients}],1];
	(* make lists of equality constraints *)
	E0=Switch[OptionValue[EqualD0],
		False, {},
		LabFrame, {#,0}&/@Table[coefficients[[j,1]]-coefficients[[1,1]],{j,2,Length[P]}],
		True, {#,0}&/@Table[coefficients[[j,1]]-coefficients[[1,1]],{j,2,Length[P]}],   (* same as lab frame *)
		LocalFrame, {#,0}&/@Table[rotatedcoefficients[[j,1]]-rotatedcoefficients[[1,1]],{j,2,Length[P]}],   (* same as lab frame *)
		_, Message[OptimalFinitePattern::equalderiv, 0, OptionValue[EqualD0]]; Return[$Failed]];
	E1=Switch[OptionValue[EqualD1],
		False, {},
		LabFrame, {#,0}&/@Flatten[Table[coefficients[[j,2]]-coefficients[[1,2]],{j,2,Length[P]}],1],
		LocalFrame, {#,0}&/@Flatten[Table[rotatedcoefficients[[j,2]]-rotatedcoefficients[[1,2]],{j,2,Length[P]}],1],
		_, Message[OptimalFinitePattern::equalderiv, 1, OptionValue[EqualD1]]; Return[$Failed]];
	E2=Switch[OptionValue[EqualD2],
		False, {},
		LabFrame, {#,0}&/@Flatten[Table[selectD2[coefficients[[j,3]]-coefficients[[1,3]]],{j,2,Length[P]}],1],
		LocalFrame, {#,0}&/@Flatten[Table[selectD2[rotatedcoefficients[[j,3]]-rotatedcoefficients[[1,3]]],{j,2,Length[P]}],1],
		_, Message[OptimalFinitePattern::equalderiv, 2, OptionValue[EqualD2]]; Return[$Failed]];
	E3=Switch[OptionValue[EqualD3],
		False, {},
		LabFrame, {#,0}&/@Flatten[Table[selectD3[coefficients[[j,4]]-coefficients[[1,4]]],{j,2,Length[P]}],1],
		LocalFrame, {#,0}&/@Flatten[Table[selectD3[rotatedcoefficients[[j,4]]-rotatedcoefficients[[1,4]]],{j,2,Length[P]}],1],
		_, Message[OptimalFinitePattern::equalderiv, 3, OptionValue[EqualD3]]; Return[$Failed]];
	E4=Switch[OptionValue[EqualD4],
		False, {},
		LabFrame, {#,0}&/@Flatten[Table[selectD4[coefficients[[j,5]]-coefficients[[1,5]]],{j,2,Length[P]}],1],
		LocalFrame, {#,0}&/@Flatten[Table[selectD4[rotatedcoefficients[[j,5]]-rotatedcoefficients[[1,5]]],{j,2,Length[P]}],1],
		_, Message[OptimalFinitePattern::equalderiv, 4, OptionValue[EqualD4]]; Return[$Failed]];
	E5=Switch[OptionValue[EqualD5],
		False, {},
		LabFrame, {#,0}&/@Flatten[Table[selectD5[coefficients[[j,6]]-coefficients[[1,6]]],{j,2,Length[P]}],1],
		LocalFrame, {#,0}&/@Flatten[Table[selectD5[rotatedcoefficients[[j,6]]-rotatedcoefficients[[1,6]]],{j,2,Length[P]}],1],
		_, Message[OptimalFinitePattern::equalderiv, 5, OptionValue[EqualD5]]; Return[$Failed]];
	(* extra constraints *)
	X = OptionValue[ExtraConstraints];
	(* check the form of all the constraints *)
	If[!VectorQ[C0, ValidConstraint[n,#]&], Message[OptimalFinitePattern::invalidC0]; Return[$Failed]];
	If[!VectorQ[C1, ValidConstraint[n,#]&], Message[OptimalFinitePattern::invalidC1]; Return[$Failed]];
	If[!VectorQ[C2, ValidConstraint[n,#]&], Message[OptimalFinitePattern::invalidC2]; Return[$Failed]];
	If[!VectorQ[C3, ValidConstraint[n,#]&], Message[OptimalFinitePattern::invalidC3]; Return[$Failed]];
	If[!VectorQ[C4, ValidConstraint[n,#]&], Message[OptimalFinitePattern::invalidC4]; Return[$Failed]];
	If[!VectorQ[C5, ValidConstraint[n,#]&], Message[OptimalFinitePattern::invalidC5]; Return[$Failed]];
	If[!VectorQ[E0, ValidConstraint[n,#]&], Message[OptimalFinitePattern::invalidE0]; Return[$Failed]];
	If[!VectorQ[E1, ValidConstraint[n,#]&], Message[OptimalFinitePattern::invalidE1]; Return[$Failed]];
	If[!VectorQ[E2, ValidConstraint[n,#]&], Message[OptimalFinitePattern::invalidE2]; Return[$Failed]];
	If[!VectorQ[E3, ValidConstraint[n,#]&], Message[OptimalFinitePattern::invalidE3]; Return[$Failed]];
	If[!VectorQ[E4, ValidConstraint[n,#]&], Message[OptimalFinitePattern::invalidE4]; Return[$Failed]];
	If[!VectorQ[E5, ValidConstraint[n,#]&], Message[OptimalFinitePattern::invalidE5]; Return[$Failed]];
	If[!VectorQ[X, ValidConstraint[n,#]&], Message[OptimalFinitePattern::invalidextra, X]; Return[$Failed]];
	(* join the constraints *)
	{B,b}=Select[Join[C0,C1,C2,C3,C4,C5,E0,E1,E2,E3,E4,E5,X],#[[2]]=!=Automatic&]\[Transpose];
	(* if constraint type is unspecified then it is an equality constraint *)
	b=Replace[b,\[Zeta]_?NumericQ->{\[Zeta],0},{1}];
	(* separate into equality and inequality constraints *)
	BB=Select[{B,b}\[Transpose],#[[2,2]]==0&];{Beq,beq}=If[BB=={},{{},{}},BB\[Transpose]];
	BB=Select[{B,b}\[Transpose],#[[2,2]]!=0&];{Bineq,bineq}=If[BB=={},{{},{}},BB\[Transpose]];
	(* inhomogeneous solution *)
	\[Gamma]=PseudoInverse[Beq].(beq\[Transpose][[1]]);
	(* constraint equations in space of homogeneous solutions *)
	BB=Beq-KroneckerProduct[(beq\[Transpose][[1]]),\[Gamma]]/\[Gamma].\[Gamma];
	(* find optimum *)
	p=LinearProgramming[-\[Gamma],
		Join[BB,Bineq],
		Join[Table[{0,0},{Length[BB]}],bineq],
		pixelranges,
		Evaluate[FilterRules[{opts,Options[OptimalFinitePattern]}, Options[LinearProgramming]]]];
	(* check solution *)
	If[Not[And@@MapThread[#2[[1]]-OptionValue[Tolerance]<=#1<=#2[[2]]+OptionValue[Tolerance]&,{p,pixelranges}]],
		Message[OptimalFinitePattern::range]];
	(* return the optimum and the proportionality constant *)
	{p,p.\[Gamma]/\[Gamma].\[Gamma],
	{pixels,P},
	FilterRules[{opts,Options[OptimalFinitePattern]}, Options[OptimalFinitePattern]]}]


SetAttributes[OptimalFinitePattern,{Locked,ReadProtected}]
SetAttributes[selectD2,{Locked,ReadProtected}]
SetAttributes[selectD3,{Locked,ReadProtected}]
SetAttributes[selectD4,{Locked,ReadProtected}]
SetAttributes[selectD5,{Locked,ReadProtected}]
SetAttributes[FastPotential,{Locked,ReadProtected}]


(* ::Section::Closed:: *)
(*plotting*)


(* ::Subsection::Closed:: *)
(*periodic*)


(* ::Text:: *)
(*we mostly use the default options for ArrayPlot:*)


Options[PlotPeriodicPattern]=Options[ArrayPlot]
SetOptions[PlotPeriodicPattern,
  ColorFunction->GrayLevel, ColorFunctionScaling->False,
  Frame->True,FrameTicks->{{Automatic,None},{Automatic,None}}]


PlotPeriodicPattern[s_,
                    size_/;(MatrixQ[size,NumericQ]\[And]Dimensions[size]==={2,3}),
                    opts:OptionsPattern[]]:=
Module[{\[Phi],basis,Rbasis,n},
  \[Phi]=s[[1]];
  basis=s[[3,1]]; Rbasis=Inverse[basis]\[Transpose]//N;
  n=s[[3,2]];
  ArrayPlot[Reverse@Table[Part[\[Phi],Sequence@@(Mod[Floor[n*Rbasis.{x,y}],n]+1)],{y,size[[2,1]]+size[[2,3]]/2,size[[2,2]]-size[[2,3]]/2,size[[2,3]]},{x,size[[1,1]]+size[[1,3]]/2,size[[1,2]]-size[[1,3]]/2,size[[1,3]]}],
    DataRange->{{size[[1,1]]+size[[1,3]]/2,size[[1,2]]-size[[1,3]]/2},{size[[2,1]]+size[[2,3]]/2,size[[2,2]]-size[[2,3]]/2}},
    Evaluate[FilterRules[{opts,Options[PlotPeriodicPattern]}, Options[ArrayPlot]]]]]


SetAttributes[PlotPeriodicPattern,{Locked,ReadProtected}]


(* ::Subsection::Closed:: *)
(*non-periodic*)


(* ::Text:: *)
(*check whether or not a specifier is a valid numerical pixel:*)


NumericalPixelQ[PointPixel[{X_?NumericQ,Y_?NumericQ},a_?NumericQ]] = True
NumericalPixelQ[DiscPixel[{X_?NumericQ,Y_?NumericQ},a_?NumericQ]] = True
NumericalPixelQ[PolygonPixel[\[CapitalLambda]_/;VectorQ[\[CapitalLambda],MatchQ[#,InfPoint[\[Theta]_?NumericQ]]\[Or]MatchQ[#,{x_?NumericQ,y_?NumericQ}]&]]] = True
NumericalPixelQ[_] = False


(* ::Text:: *)
(*point pixels are shown as circular discs with given area:*)


Options[PixelGraphics] = {GraphicsSize->1000}


PixelGraphics[PointPixel[{X_,Y_},a_], opts:OptionsPattern[]] := Disk[{X,Y},Sqrt[a/Pi]]


(* ::Text:: *)
(*disc pixels are shown as discs:*)


PixelGraphics[DiscPixel[{X_,Y_},r_], opts:OptionsPattern[]] := Disk[{X,Y},r]


(* ::Text:: *)
(*infinite polygons are plotted out to a distance \[Lambda]:*)


connectpoints[{InfPoint[\[Theta]1_],InfPoint[\[Theta]2_]}, \[Lambda]_] := {}
connectpoints[{InfPoint[\[Theta]1_],{x2_,y2_}}, \[Lambda]_] := {{x2,y2}+\[Lambda] {Cos[\[Theta]1],Sin[\[Theta]1]},{x2,y2}}
connectpoints[{{x1_,y1_},InfPoint[\[Theta]2_]}, \[Lambda]_] := {{x1,y1},{x1,y1}+\[Lambda] {Cos[\[Theta]2],Sin[\[Theta]2]}}
connectpoints[{{x1_,y1_},{x2_,y2_}}, \[Lambda]_] := {{x1,y1},{x2,y2}}


PixelGraphics[PolygonPixel[\[CapitalLambda]_/;VectorQ[\[CapitalLambda],MatchQ[#,InfPoint[_]]\[Or]MatchQ[#,{_,_}]&]], opts:OptionsPattern[]] :=
  With[{\[Lambda]=OptionValue[GraphicsSize]},
    (* don't worry about duplicate points in the list - Polygon will deal with them *)
    Polygon[Join@@(connectpoints[#,\[Lambda]]&/@({\[CapitalLambda],RotateLeft[\[CapitalLambda]]}\[Transpose]))]]


(* ::Text:: *)
(*lists of specifications:*)


PixelGraphics[\[CapitalLambda]_, opts:OptionsPattern[]] := PixelGraphics[#,opts]&/@\[CapitalLambda]


(* ::Text:: *)
(*plot the output of an optimization run:*)
(*we mostly use the default options for Graphics:*)


Options[PlotFinitePattern]=Union[Options[Graphics],Options[PixelGraphics],
	{ColorFunction->GrayLevel,
	ColorFunctionScaling->False}]
SetOptions[PlotFinitePattern,
	Frame->True,
	FrameTicks->{{Automatic,None},{Automatic,None}}]


PlotFinitePattern[s_, opts:OptionsPattern[]]:=Module[{potential,pixels,color,c1,c2,pixeloptions},
	potential=s[[1]];
	pixels=s[[3,1]];
	If[OptionValue[ColorFunctionScaling],
		c1 = Min[potential];
		c2 = Max[potential];
		color[x_] = OptionValue[ColorFunction][(x-c1)/(c2-c1)],
		color[x_] = OptionValue[ColorFunction][x]];
	pixeloptions = Evaluate[FilterRules[{opts,Options[PlotFinitePattern]}, Options[PixelGraphics]]];
	Graphics[MapThread[{color[#2],PixelGraphics[#1,pixeloptions]}&,{pixels,potential}],
		Evaluate[FilterRules[{opts,Options[PlotFinitePattern]}, Options[Graphics]]]]]


SetAttributes[NumericalPixelQ,{Locked,ReadProtected}]
SetAttributes[PixelGraphics,{Locked,ReadProtected}]
SetAttributes[connectpoints,{Locked,ReadProtected}]
SetAttributes[PlotFinitePattern,{Locked,ReadProtected}]
SetAttributes[GraphicsSize,{Locked,ReadProtected}]


(* ::Section::Closed:: *)
(*epilog*)


$CompilationTarget=savecompilationtarget;
Clear[savecompilationtarget];


End[]


EndPackage[]
