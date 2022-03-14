import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:inject/inject.dart';
import 'package:masterstudy_app/data/models/course/CourcesResponse.dart';
import 'package:masterstudy_app/data/repository/courses_repository.dart';

import './bloc.dart';

@provide
class SearchScreenBloc extends Bloc<SearchScreenEvent, SearchScreenState> {
  final CoursesRepository _coursesRepository;
  late List<String> _popularSearches;
  late List<CoursesBean> _newCourses;

  SearchScreenState get initialState => InitialSearchScreenState();

  SearchScreenBloc(this._coursesRepository) : super(InitialSearchScreenState()) {
    on<SearchScreenEvent>((event, emit) async => await _searchBloc(event, emit));
  }

  Future<void> _searchBloc(SearchScreenEvent event, Emitter<SearchScreenState> emit) async {
    if (event is FetchEvent) {
      if (state is ErrorSearchScreenState) emit(InitialSearchScreenState());
      if (_popularSearches == null || _newCourses == null) {
        emit(InitialSearchScreenState());
        try {
          // _newCourses = (await _coursesRepository.getCourses(sort: Sort.date_low)).courses;

          _popularSearches = (await _coursesRepository.getPopularSearches()).searches;
          emit(LoadedSearchScreenState(_newCourses, _popularSearches));
        } catch (_) {
          emit(ErrorSearchScreenState());
        }
      }
    }
  }
}
