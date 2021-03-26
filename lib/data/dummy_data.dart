import '../models/movie_star.dart';
import '../models/movie_category.dart';
import '../models/movie.dart';

const DUMMY_MOVIES_CATEGORIES = const [
  MovieCategory(
    category_id: 'c1',
    category_name: 'Action',
    category_img_url:
        'http://thefilmstage.com/wp-content/uploads/2017/02/Jack-Reacher.jpg',
  ),
  MovieCategory(
    category_id: 'c2',
    category_name: 'Romance',
    category_img_url:
        'https://media.glamour.com/photos/5caf76679207a57371fdf97d/4:3/w_4159,h_3119,c_limit/perfect-date-1.jpg',
  ),
  MovieCategory(
    category_id: 'c3',
    category_name: 'Adventure',
    category_img_url:
        'https://www.newzealand.com/assets/Tourism-NZ/Hamilton-Waikato/b079a8fdcb/img-1536068317-157-18524-p-836AD8D5-C0D6-A3AA-232CCF3DB3EF1DC0-2544003__aWxvdmVrZWxseQo_FocalPointCropWzQyNyw2NDAsNTAsNTAsODUsImpwZyIsNjUsMi41XQ.jpg',
  ),
  MovieCategory(
    category_id: 'c4',
    category_name: 'Family',
    category_img_url:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3nsJya8C4vNUDOsE1SokdTB6JoQAo3-L1QHjuxVoTnjRKNWJUOaQQ2c6Xutt4WGt-mQw&usqp=CAU',
  ),
  MovieCategory(
    category_id: 'c5',
    category_name: 'Comedy',
    category_img_url:
        'https://pbblogassets.s3.amazonaws.com/uploads/2020/02/02140430/three-stooges.jpg',
  ),
  MovieCategory(
    category_id: 'c6',
    category_name: 'Horror',
    category_img_url:
        'https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=1400&h=700&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F23%2F2020%2F08%2F18%2Fbest-horror-movies-on-netflix.jpg',
  ),
];

const m1_stars = [
  MovieStar(
    starName: 'Henry Cavill',
    starImgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/d/dd/Henry_Cavill_by_Gage_Skidmore_2.jpg',
  ),
  MovieStar(
    starName: 'Ben Affleck',
    starImgUrl:
        'https://m.media-amazon.com/images/M/MV5BMzczNzNiMDAtMmUzZS00MTkwLWIwOTYtNmYyNjg3MTVkNThhXkEyXkFqcGdeQXVyMjA4MjI5MTA@._V1_UY1200_CR135,0,630,1200_AL_.jpg',
  ),
  MovieStar(
    starName: 'Gal Gadot',
    starImgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/5/5b/Gal_Gadot_cropped_lighting_corrected_2b.jpg',
  ),
];

const m2_stars = [
  MovieStar(
    starName: 'Henry Cavill',
    starImgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/d/dd/Henry_Cavill_by_Gage_Skidmore_2.jpg',
  ),
  MovieStar(
    starName: 'Amy Adams',
    starImgUrl:
        'https://in.bmscdn.com/iedb/artist/images/website/poster/large/amy-adams-148-24-03-2017-12-40-00.jpg',
  ),
  MovieStar(
    starName: 'Michael Shannon',
    starImgUrl:
        'https://m.media-amazon.com/images/M/MV5BMjE0NzM5MTc5OF5BMl5BanBnXkFtZTgwMjc3ODYxODE@._V1_.jpg',
  ),
];

const m3_stars = [
  MovieStar(
    starName: 'Gal Gadot',
    starImgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/5/5b/Gal_Gadot_cropped_lighting_corrected_2b.jpg',
  ),
  MovieStar(
    starName: 'Kristen Wiig',
    starImgUrl:
        'https://deadline.com/wp-content/uploads/2017/03/kristin-wiig-e1555323373932.jpg',
  ),
  MovieStar(
    starName: 'Chris Pine',
    starImgUrl:
        'http://www.gstatic.com/tv/thumb/persons/282920/282920_v9_bb.jpg',
  ),
  MovieStar(
    starName: 'Pedro Pascal',
    starImgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/c/c5/Pedro_Pascal_by_Gage_Skidmore.jpg',
  ),
];

const m4_stars = [
  MovieStar(
    starName: 'Noah Centineo',
    starImgUrl:
        'https://resizing.flixster.com/t-OBRnQOS47xts3E2NxGaKYsZUA=/506x652/v2/https://flxt.tmsimg.com/v9/AllPhotos/552683/552683_v9_bc.jpg',
  ),
  MovieStar(
    starName: 'Laura Marano',
    starImgUrl: 'https://i.insider.com/5ced8d24594ea50b4612cc44',
  ),
  MovieStar(
    starName: 'Camila Mendes',
    starImgUrl:
        'https://resizing.flixster.com/_OG8V2RzyYNw3Czn1yuUIu4Yjek=/506x652/v2/https://flxt.tmsimg.com/v9/AllPhotos/969790/969790_v9_bb.jpg',
  ),
  MovieStar(
    starName: 'Odiseas Georgiadis',
    starImgUrl:
        'https://m.media-amazon.com/images/M/MV5BNmI3YjYxYTMtYWY0Zi00N2MwLWJmMzQtNDIzYmViNDNjMzIwXkEyXkFqcGdeQXVyMTU3NDE3MDU@._V1_.jpg',
  ),
];

const m5_stars = [
  MovieStar(
    starName: 'Zachary Levi',
    starImgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/2/24/Zachary_Levi_by_Gage_Skidmore_6.jpg',
  ),
  MovieStar(
    starName: 'Asher Angel',
    starImgUrl:
        'https://i.pinimg.com/originals/10/a9/8a/10a98a8d3869b0a5a69e05c9ea448fe0.jpg',
  ),
  MovieStar(
    starName: 'Jack Dylan Grazer',
    starImgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Jack_Dylan_Grazer_by_Gage_Skidmore.jpg/220px-Jack_Dylan_Grazer_by_Gage_Skidmore.jpg',
  ),
  MovieStar(
    starName: 'Mark Strong',
    starImgUrl:
        'https://cdn.britannica.com/s:300x1000/99/219499-004-02A9B3FF/Mark-Strong-2014.jpg',
  ),
];
const DUMMY_MOVIES = const [
  Movie(
    movie_id: 'm1',
    movie_name: 'Batman v Superman',
    movie_description:
        'Bruce Wayne, a billionaire, believes that Superman is a threat to humanity after his battle in Metropolis. Thus, he decides to adopt his mantle of Batman and defeat him once and for all.',
    movie_img_url:
        'https://upload.wikimedia.org/wikipedia/en/2/20/Batman_v_Superman_poster.jpg',
    movie_rating: 4.5,
    categories_id: ['c1', 'c3'],
    starring: m1_stars,
  ),
  Movie(
    movie_id: 'm2',
    movie_name: 'Man of Steel',
    movie_description:
        'Clark learns about the source of his abilities and his real home when he enters a Kryptonian ship in the Artic. However, an old enemy follows him to Earth in search of a codex and brings destruction.',
    movie_img_url:
        'https://i.pinimg.com/originals/d4/a2/fa/d4a2fabf43e4d605844bbed6577f099f.jpg',
    movie_rating: 5.0,
    categories_id: ['c1', 'c3'],
    starring: m2_stars,
  ),
  Movie(
    movie_id: 'm3',
    movie_name: 'Wonder Woman 1984',
    movie_description:
        'Diana Prince lives quietly among mortals in the vibrant, sleek 1980s -- an era of excess driven by the pursuit of having it all. Though she has come into her full powers, she maintains a low profile by curating ancient artifacts, and only performing heroic acts incognito. But soon, Diana will have to muster all of her strength, wisdom and courage as she finds herself squaring off against Maxwell Lord and the Cheetah, a villainess who possesses superhuman strength and agility.',
    movie_img_url:
        'https://img.cinemablend.com/filter:scale/quill/9/5/6/0/3/5/9560359d5569f902aced5ed1f3bd9bb229580f8e.jpg',
    movie_rating: 5.0,
    categories_id: ['c1', 'c3'],
    starring: m3_stars,
  ),
  Movie(
    movie_id: 'm4',
    movie_name: 'The Perfect Date',
    movie_description:
        'A high school student creates an app to offer his services as a fake date to make money for college. When he develops feelings for someone, his plan gets complicated.',
    movie_img_url:
        'https://theimpactnews.com/wp-content/uploads/2019/04/The-Perfect-Date-.jpg',
    movie_rating: 4.5,
    categories_id: ['c2', 'c5'],
    starring: m4_stars,
  ),
  Movie(
    movie_id: 'm5',
    movie_name: 'Shazam!',
    movie_description:
        'After being abandoned at a fair, Billy constantly searches for his mother. His life, however, takes a huge turn when he inherits the superpowers of a powerful wizard.',
    movie_img_url:
        'https://patriotpower.ogsd.net/wp-content/uploads/2019/04/txtddommain1shtshzamjpg.jpeg',
    movie_rating: 5.0,
    categories_id: ['c1', 'c5'],
    starring: m5_stars,
  ),
];
